// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
library;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/config/amplify_outputs/storage/storage_outputs.dart';
import 'package:amplify_core/src/types/storage/storage_path_from_identity_id.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:amplify_storage_s3_dart/src/platform_impl/download_file/download_file.dart';
import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';
import 'package:amplify_storage_s3_dart/src/utils/app_path_provider/app_path_provider.dart';
import 'package:mocktail/mocktail.dart';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';

import '../test_utils/mocks.dart';

void main() {
  group('downloadFile() io implementation', () {
    late StorageS3Service storageS3Service;
    late S3DownloadTask downloadTask;
    late FutureOr<void> Function() preStart;
    late void Function(S3TransferProgress) onProgress;
    late void Function(List<int>) onData;
    late FutureOr<void> Function() onDone;
    const appPathProvider = S3DartAppPathProvider();
    final testDestinationPath = path.join(Directory.current.path, 'test.txt');
    const testStorageOutputs = StorageOutputs(
      bucketName: 'fake-bucket',
      awsRegion: 'west-2',
    );
    const testKey = 'upload-key.text';
    const testFileContent = 'Hello world!';
    final testItem = S3Item(path: testKey);
    final testFileBytes = utf8.encode(testFileContent);

    late S3TransferProgress expectedProgress;

    setUpAll(() {
      storageS3Service = MockStorageS3Service();
      downloadTask = MockS3DownloadTask();
      registerFallbackValue(const StorageDownloadDataOptions());
      registerFallbackValue(const StoragePath.fromString('public/$testKey'));
      registerFallbackValue(
        StoragePathFromIdentityId(
          (identityId) => 'private/$identityId/$testKey',
        ),
      );

      when(
        () => storageS3Service.downloadData(
          path: any(named: 'path'),
          options: any(named: 'options'),
          preStart: any(named: 'preStart'),
          onProgress: any(named: 'onProgress'),
          onData: any(named: 'onData'),
          onDone: any(named: 'onDone'),
          onError: any(named: 'onError'),
        ),
      ).thenAnswer((_) => downloadTask);

      when(() => downloadTask.result).thenAnswer((_) async => testItem);
    });

    test(
      'should invoke StorageS3Service.downloadData with expected parameters',
      () async {
        const options = StorageDownloadFileOptions(
          pluginOptions: S3DownloadFilePluginOptions(getProperties: true),
        );
        final downloadFileOperation = downloadFile(
          path: StoragePath.fromIdentityId(
            (identityId) => 'private/$identityId/$testKey',
          ),
          localFile: AWSFile.fromPath(testDestinationPath),
          options: options,
          storageOutputs: testStorageOutputs,
          storageS3Service: storageS3Service,
          appPathProvider: appPathProvider,
          onProgress: (progress) {
            expectedProgress = progress;
          },
        );

        final captureParams = verify(
          () => storageS3Service.downloadData(
            path: captureAny<StoragePathFromIdentityId>(named: 'path'),
            options: captureAny<StorageDownloadDataOptions>(named: 'options'),
            preStart: captureAny<FutureOr<void> Function()?>(named: 'preStart'),
            onProgress: captureAny<void Function(S3TransferProgress)?>(
              named: 'onProgress',
            ),
            onData: captureAny<void Function(List<int>)?>(named: 'onData'),
            onDone: captureAny<FutureOr<void> Function()?>(named: 'onDone'),
            onError: captureAny<FutureOr<void> Function()?>(named: 'onError'),
          ),
        ).captured;

        final capturedOptions = captureParams[1];

        expect(
          capturedOptions,
          isA<StorageDownloadDataOptions>().having(
            (o) =>
                (o.pluginOptions! as S3DownloadDataPluginOptions).getProperties,
            'getProperties',
            isTrue,
          ),
        );

        expect(captureParams[2] is Function, true);
        preStart = captureParams[2] as FutureOr<void> Function();
        expect(captureParams[3] is Function, true);
        onProgress = captureParams[3] as void Function(S3TransferProgress);
        expect(captureParams[4] is Function, true);
        onData = captureParams[4] as void Function(List<int>);
        expect(captureParams[5] is Function, true);
        onDone = captureParams[5] as FutureOr<void> Function();

        final result = await downloadFileOperation.result;
        expect(result.downloadedItem, testItem);
      },
    );

    test('supplied callback parameters should function correctly', () async {
      // 0. create a existing file on the destination path
      final existingFile = File(testDestinationPath);
      await existingFile.writeAsString('你好世界！');
      // 1. preStart check if destination is writable and to create temporary file
      await preStart();
      // 2. supplied onProgress callback should be invoked
      const testProgress = S3TransferProgress(
        totalBytes: 1024,
        transferredBytes: 1024,
        state: StorageTransferState.inProgress,
      );
      onProgress(testProgress);
      expect(testProgress, expectedProgress);
      // 3. onData should write bytes to temporary file
      onData(testFileBytes);
      // 4. onDone should flush bytes to the temporary file, close and copy the
      // file to destination
      await onDone();
      // verify the destination file has the content
      final downloadedFile = File(testDestinationPath);
      expect(await downloadedFile.readAsString(), testFileContent);
      await downloadedFile.delete();
    });

    group('preStart callback should throw exceptions', () {
      test(
        'when destination path is null is throws StorageLocalFileNotFoundException',
        () {
          downloadFile(
            path: const StoragePath.fromString('public/$testKey'),
            localFile: AWSFile.fromData([101]),
            options: const StorageDownloadFileOptions(
              pluginOptions: S3DownloadFilePluginOptions(),
            ),
            storageOutputs: testStorageOutputs,
            storageS3Service: storageS3Service,
            appPathProvider: appPathProvider,
            onProgress: (progress) {
              expectedProgress = progress;
            },
          );

          final capturedPreStart = verify(
            () => storageS3Service.downloadData(
              path: const StoragePath.fromString('public/$testKey'),
              options: any(named: 'options'),
              preStart: captureAny<FutureOr<void> Function()?>(
                named: 'preStart',
              ),
              onProgress: any(named: 'onProgress'),
              onData: any(named: 'onData'),
              onDone: any(named: 'onDone'),
              onError: any(named: 'onError'),
            ),
          ).captured.last;
          final preStart = capturedPreStart as FutureOr<void> Function();
          expect(preStart(), throwsA(isA<UnknownException>()));
        },
      );

      test(
        'when destination path is a directory instead of a file it throws StorageLocalFileNotFoundException',
        () {
          downloadFile(
            path: const StoragePath.fromString('public/$testKey'),
            localFile: AWSFile.fromPath(Directory.systemTemp.path),
            options: const StorageDownloadFileOptions(
              pluginOptions: S3DownloadFilePluginOptions(),
            ),
            storageOutputs: testStorageOutputs,
            storageS3Service: storageS3Service,
            appPathProvider: appPathProvider,
            onProgress: (progress) {
              expectedProgress = progress;
            },
          );

          final capturedPreStart = verify(
            () => storageS3Service.downloadData(
              path: const StoragePath.fromString('public/$testKey'),
              options: any(named: 'options'),
              preStart: captureAny<FutureOr<void> Function()?>(
                named: 'preStart',
              ),
              onProgress: any(named: 'onProgress'),
              onData: any(named: 'onData'),
              onDone: any(named: 'onDone'),
              onError: any(named: 'onError'),
            ),
          ).captured.last;
          final preStart = capturedPreStart as FutureOr<void> Function();
          expect(preStart(), throwsA(isA<UnknownException>()));
        },
      );
    });

    test(
      'returned S3DownloadFileOperation pause resume and cancel APIs should interact with S3DownloadTask',
      () async {
        when(() => downloadTask.result).thenAnswer((_) async => testItem);
        when(downloadTask.pause).thenAnswer((_) async {});
        when(downloadTask.resume).thenAnswer((_) async {});
        when(downloadTask.cancel).thenAnswer((_) async {});

        final downloadFileOperation = downloadFile(
          path: const StoragePath.fromString('public/$testKey'),
          localFile: AWSFile.fromPath('path'),
          options: const StorageDownloadFileOptions(
            pluginOptions: S3DownloadFilePluginOptions(),
          ),
          storageOutputs: testStorageOutputs,
          storageS3Service: storageS3Service,
          appPathProvider: appPathProvider,
          onProgress: (progress) {
            expectedProgress = progress;
          },
        );

        await downloadFileOperation.pause();
        await downloadFileOperation.resume();
        await downloadFileOperation.cancel();

        verify(downloadTask.pause).called(1);
        verify(downloadTask.resume).called(1);
        verify(downloadTask.cancel).called(1);
      },
    );
  });
}
