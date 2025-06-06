// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:amplify_secure_storage_dart/src/worker/secure_storage_action.dart';
import 'package:amplify_secure_storage_dart/src/worker/secure_storage_request.dart';
import 'package:amplify_secure_storage_dart/src/worker/secure_storage_worker.worker.dart';
import 'package:built_value/serializer.dart';
import 'package:worker_bee/worker_bee.dart';

part 'secure_storage_worker.g.dart';

/// {@template amplify_secure_storage_dart.secure_storage_worker}
/// A remote worker which can handle secure storage requests.
/// {@endtemplate}
@WorkerBee('lib/src/worker/workers.dart')
abstract class SecureStorageWorker
    extends WorkerBeeBase<SecureStorageRequest, SecureStorageRequest> {
  /// {@macro amplify_secure_storage_dart.secure_storage_worker}
  SecureStorageWorker() : super(serializers: serializers);

  /// {@macro amplify_secure_storage_dart.secure_storage_worker}
  factory SecureStorageWorker.create() = SecureStorageWorkerImpl;

  AmplifySecureStorageInterface? _storage;

  @override
  Future<SecureStorageRequest?> run(
    Stream<SecureStorageRequest> listen,
    StreamSink<SecureStorageRequest> respond,
  ) async {
    await for (final request in listen) {
      var response = request;
      if (request.action == SecureStorageAction.init) {
        final config = unwrapParameter('config', request.config);
        // ignore: invalid_use_of_visible_for_testing_member
        _storage ??= AmplifySecureStorageDart(config: config);
      }
      final storage = _storage;
      if (storage == null) {
        throw StateError('Must call init first');
      }
      switch (request.action) {
        case SecureStorageAction.init:
          break;
        case SecureStorageAction.delete:
          final key = unwrapParameter('key', request.key);
          await storage.delete(key: key);
        case SecureStorageAction.read:
          final key = unwrapParameter('key', request.key);
          final value = await storage.read(key: key);
          response = request.rebuild((b) => b..value = value);
        case SecureStorageAction.write:
          final key = unwrapParameter('key', request.key);
          final value = unwrapParameter('value', request.value);
          await storage.write(key: key, value: value);
        case SecureStorageAction.removeAll:
          await storage.removeAll();
      }
      respond.add(response);
    }
    return null;
  }
}

@SerializersFor([
  AmplifySecureStorageConfig,
  SecureStorageAction,
  SecureStorageRequest,
])
final Serializers serializers = _$serializers; // TODO(dnys1): https://github.com/google/built_value.dart/pull/1202
