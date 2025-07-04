// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:js_interop';

// ignore: implementation_imports
import 'package:aws_common/src/js/common.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:web/web.dart';
import 'package:worker_bee/src/common.dart';
import 'package:worker_bee/src/exception/worker_bee_exception.dart';
import 'package:worker_bee/src/js/js_extensions.dart';
import 'package:worker_bee/src/js/message_port_channel.dart';
import 'package:worker_bee/src/preamble.dart';
import 'package:worker_bee/worker_bee.dart';

/// The result of serializing a message using the registered `built_value`
/// serializers.
///
/// Objects needing transfer between contexts, e.g. [MessagePort]s, will be
/// included in the [transfer] array.
class _WorkerSerializeResult {
  const _WorkerSerializeResult(this.value, this.transfer);

  /// The serialized value.
  final Object? value;

  /// Objects needing transfer between contexts, e.g. [MessagePort]s.
  final List<Object> transfer;
}

/// {@macro worker_bee.worker_bee_impl}
mixin WorkerBeeImpl<Request extends Object, Response>
    on WorkerBeeCommon<Request, Response> {
  // Controllers used to manage web worker.
  StreamController<Request>? _controller;
  StreamController<Response>? _incomingMessages;
  StreamChannel<LogEntry>? _logsChannel;

  /// The spawned worker instance.
  Worker? _worker;

  @override
  String get jsEntrypoint;

  @override
  List<String> get fallbackUrls => const [];

  @override
  String? get workerEntrypointOverride {
    if (currentUri.path.isNotEmpty && !currentUri.path.endsWith(jsEntrypoint)) {
      return currentUri.path;
    }
    return null;
  }

  /// Serializes an object using the registered `built_value` serializers.
  _WorkerSerializeResult _serialize(Object? object) {
    final transfer = <Object>[];
    final serialized = runZoned(
      () => serializers.serialize(
        object,
        // Do not specify type so that it is serialized into the array.
        specifiedType: FullType.unspecified,
      ),
      zoneValues: {#transfer: transfer},
    );
    return _WorkerSerializeResult(serialized, transfer);
  }

  /// Deserializes an object using the registered `built_value` serializers.
  @optionalTypeArgs
  T _deserialize<T extends Object?>(Object? object) {
    final deserialized = runZoned(
      () =>
          serializers.deserialize(
                object,
                // Do not specify type so that it pulls from the array.
                specifiedType: FullType.unspecified,
              )
              as T,
      zoneValues: {#addPendingOperation: addPendingOperation},
    );
    return deserialized;
  }

  @override
  void completeError(Object error, [StackTrace? stackTrace]) {
    if (isWebWorker) {
      final serialized = _serialize(error);
      error = serialized.value!;
      self.postMessage(
        serialized.value?.toJSBoxOrCast,
        serialized.transfer.toJSBoxOrCast,
      );
    }
    super.completeError(error, stackTrace);
  }

  @override
  @nonVirtual
  Future<void> connect({StreamChannel<LogEntry>? logsChannel}) async {
    return runTraced(() async {
      await super.connect(logsChannel: logsChannel);
      final channel = StreamChannelController<Object?>(sync: true);

      void onMessage(Event event) {
        event as MessageEvent;
        logger.verbose('Got message: ${event.data}');
        final serialized = event.data;
        final message = _deserialize<Request>(serialized);
        channel.foreign.sink.add(message);
      }

      self.addEventListener(
        'message',
        Zone.current.bindUnaryCallback<void, Event>(onMessage).toJS,
      );
      channel.foreign.stream.listen(
        Zone.current.bindUnaryCallback((message) {
          logger.verbose('Sending message: $message');
          final serialized = _serialize(message);
          self.postMessage(
            serialized.value?.toJSBoxOrCast,
            serialized.transfer.toJSBoxOrCast,
          );
        }),
      );
      logger.verbose('Ready');
      self.postMessage('ready'.toJS);
      final result = await run(
        channel.local.stream.asBroadcastStream().cast(),
        channel.local.sink.cast(),
      );
      logger.verbose('Finished');
      self.postMessage('done'.toJS);

      final serializedResult = _serialize(result);
      self.postMessage(
        serializedResult.value?.toJSBoxOrCast,
        serializedResult.transfer.toJSBoxOrCast,
      );

      // Allow streams to flush, then close underlying resources.
      await close();
    }, onError: completeError);
  }

  @override
  @nonVirtual
  Future<void> spawn({String? jsEntrypoint}) async {
    return runTraced(() async {
      for (final entrypoint in [
        if (jsEntrypoint != null) jsEntrypoint,
        this.jsEntrypoint,
        ...fallbackUrls,
      ]) {
        logger.debug('Spawning worker at $entrypoint');

        // Spawn the worker using the specified script.
        try {
          _worker = Worker(entrypoint.toJS);
        } on Object {
          logger.debug('Could not launch worker at $entrypoint');
          continue;
        }

        try {
          /// Captures errors occurring before a `ready` event is received.
          final errorBeforeReady = Completer<void>();

          // Whether `run` has completed on the web worker.
          var done = false;

          // Create the controller to handle message passing.
          _controller = StreamController<Request>(
            sync: true,
            onCancel: () {
              final error = WorkerBeeExceptionImpl('Worker quit unexpectedly');
              if (ready.isCompleted) {
                if (!done) {
                  completeError(error);
                }
              } else {
                errorBeforeReady.completeError(error);
              }
            },
          );

          void onEvent(Event event) {
            event as MessageEvent;
            final error = WorkerBeeExceptionImpl(
              'Could not serialize message: ${event.data}',
            );
            if (ready.isCompleted) {
              completeError(error);
            } else {
              errorBeforeReady.completeError(error);
            }
          }

          void onError(Event event) {
            Object error;
            if (event.isA<ErrorEvent>()) {
              event as ErrorEvent;
              final eventJson = JSON.stringify(event.error);
              error = WorkerBeeExceptionImpl('${event.message} ($eventJson)');
            } else {
              error = WorkerBeeExceptionImpl('An unknown error occurred');
            }
            if (ready.isCompleted) {
              completeError(error);
            } else {
              errorBeforeReady.completeError(error);
            }
          }

          // Listen for error messages on the worker.
          //
          // Some browsers do not currently support the `messageerror` event:
          // https://developer.mozilla.org/en-US/docs/Web/API/Worker/messageerror_event#browser_compatibility
          _worker!.addEventListener('messageerror', onEvent.toJS);
          _worker!.onerror = onError.toJS;

          // Passes outgoing messages to the worker instance.
          _controller!.stream.listen(
            Zone.current.bindUnaryCallback((message) {
              logger.verbose('Sending message: $message');
              final serialized = _serialize(message);

              _worker!.postMessage(
                serialized.value?.toJSBoxOrCast,
                serialized.transfer.toJSBoxOrCast,
              );
            }),
          );

          void onMessage(MessageEvent event) {
            final eventData = event.data;

            if (eventData.isA<JSString>()) {
              eventData as JSString;
              final state = eventData.toDart;

              if (state == 'ready') {
                logger.verbose('Received ready event');
                ready.complete();
                return;
              }
              if (state == 'done') {
                logger.verbose('Received done event');
                done = true;
                return;
              }
            }
            final message = _deserialize(eventData);
            logger.verbose('Got message: $message');
            if (message is WorkerBeeException) {
              if (ready.isCompleted) {
                _incomingMessages!.addError(message, message.stackTrace);
                completeError(message, message.stackTrace);
              } else {
                errorBeforeReady.completeError(message, message.stackTrace);
              }
              return;
            }
            message as Response?;
            if (message is Response && !done) {
              _incomingMessages!.add(message);
            }
            if (done) {
              complete(message);
            }
          }

          // Listen to worker
          _incomingMessages = StreamController<Response>(sync: true);
          _worker!.onmessage = Zone.current.bindUnaryCallback(onMessage).toJS;

          // Send assignment and logs channel
          final jsLogsChannel = MessageChannel();
          _logsChannel = MessagePortChannel<LogEntry>(
            jsLogsChannel.port1,
            serializers: serializers,
          );
          _logsChannel!.stream.listen(
            Zone.current.bindUnaryCallback((message) {
              if (logsController.isClosed) return;
              logsController.add(message);
            }),
          );

          _worker!.postMessage(name.toJS, [jsLogsChannel.port2].toJS);

          await Future.any<void>([ready.future, errorBeforeReady.future]);

          stream = _incomingMessages!.stream;
          sink = _controller!.sink;

          return;
        } on Object catch (e, st) {
          logger.debug('Error initializing worker', e, st);
          continue;
        }
      }

      throw WorkerBeeExceptionImpl('Could not launch web worker.');
    }, onError: completeError);
  }

  @override
  Future<void> close({bool force = false}) async {
    // Close the request/response channels.
    await _incomingMessages?.close();
    await _controller?.close();
    _incomingMessages = null;
    _controller = null;

    // Await pending operations which may need logging utilities.
    await super.close(force: force);

    // Close remote logging.
    await _logsChannel?.sink.close();
    _logsChannel = null;

    // Close local logging.
    await logsController.close();
    logger.close();

    _worker?.terminate();
    _worker = null;
  }
}
