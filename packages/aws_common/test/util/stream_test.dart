// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

void main() {
  group('StreamForward', () {
    test('forwards events', () {
      final controller = StreamController<int>();
      expect(
        Stream.fromIterable([1, 2, 3, 4, 5]).forward(controller),
        completes,
      );
      expect(controller.stream, emitsInOrder([1, 2, 3, 4, 5, emitsDone]));
    });

    test('forwards errors', () {
      final controller = StreamController<int>();
      expect(Stream<int>.error('error').forward(controller), completes);
      expect(controller.stream, emitsInOrder([emitsError('error'), emitsDone]));
    });

    test('does not add events when closed', () {
      final controller = StreamController<int>()..close();
      expect(
        Stream.fromIterable([1, 2, 3, 4, 5]).forward(controller),
        completes,
      );
      expect(controller.stream, emitsDone);
    });

    test('does not add errors when closed', () {
      final controller = StreamController<int>()..close();
      expect(Stream<int>.error('error').forward(controller), completes);
      expect(controller.stream, emitsDone);
    });

    test('allows controller to be used independently', () {
      final controller = StreamController<int>();
      Future.sync(() async {
        for (final n in [1, 3, 5, 7, 9]) {
          await Future.delayed(Duration.zero, () => controller.add(n));
        }
      });
      () async* {
        for (final n in [2, 4, 6, 8, 10]) {
          await Future<void>.delayed(Duration.zero);
          yield n;
        }
      }().forward(controller);
      expect(
        controller.stream,
        emitsInOrder([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, emitsDone]),
      );
    });

    test('keeps controller alive', () async {
      final controller = StreamController<int>();
      expect(
        Stream.fromIterable([
          1,
          2,
          3,
          4,
          5,
        ]).forward(controller, closeWhenDone: false),
        completes,
      );
      await expectLater(controller.stream, emitsInOrder([1, 2, 3, 4, 5]));
      expect(controller.isClosed, isFalse);
    });

    test('cancels on errors', () {
      final errorController = StreamController<int>();
      final controller = StreamController<int>();
      expect(
        errorController.stream.forward(
          controller,
          cancelOnError: true,
          closeWhenDone: false,
        ),
        completes,
      );
      errorController
        ..add(1)
        ..addError('error')
        ..add(2);
      errorController.close().then((_) {
        controller.close();
      });
      expect(
        controller.stream,
        emitsInOrder([1, emitsError('error'), emitsDone]),
      );
    });
  });
}
