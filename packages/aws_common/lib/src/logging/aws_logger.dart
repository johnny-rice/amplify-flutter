// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/src/logging/logging_ext.dart';
import 'package:collection/collection.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';

/// The default log level used by [AWSLogger].
const zDefaultLogLevel = LogLevel.info;

/// {@template aws_common.logging.aws_logger}
/// A logging utility providing the ability to emit log entries, configure the
/// level at which entries are emitted, and register plugins which can handle
/// log entries as they're emitted.
/// {@endtemplate}
///
/// Plugins are created by implementing [AWSLoggerPlugin] and calling
/// [AWSLogger.registerPlugin] on an [AWSLogger] instance.
///
/// By default, a [SimpleLogPrinter] is registered on the root [AWSLogger]
/// which impacts all child loggers.
class AWSLogger with AWSDebuggable implements Closeable {
  /// Creates a top-level [AWSLogger].
  ///
  /// {@macro aws_common.logging.aws_logger}
  factory AWSLogger([String namespace = rootNamespace]) {
    return activeLoggers[namespace] ??= AWSLogger.protected(namespace);
  }

  /// Creates a detached [AWSLogger] which is not part of the global hierarchy.
  ///
  /// {@macro aws_common.logging.aws_logger}
  AWSLogger.detached([String namespace = 'Detached'])
    : _logger = Logger.detached(namespace);

  /// {@macro aws_common.logging.aws_logger}
  @protected
  AWSLogger.protected(String namespace) : _logger = Logger(namespace) {
    _init(this);
    _parent?._children.add(this);
  }

  static bool _initialized = false;
  static void _init(AWSLogger rootLogger) {
    if (_initialized) return;
    _initialized = true;
    hierarchicalLoggingEnabled = true;
    rootLogger.registerPlugin(const SimpleLogPrinter());
  }

  /// The root namespace for all [AWSLogger] instances.
  static const rootNamespace = 'AWS';

  /// The cache of all active loggers by namespace.
  @protected
  @visibleForTesting
  static final Map<String, AWSLogger> activeLoggers = {};

  /// The active plugin subscriptions for this logger and its children.
  final Map<AWSLoggerPlugin, StreamSubscription<LogEntry>> _subscriptions = {};

  final Logger _logger;

  /// Parent of this logger in the logger hierarchy.
  AWSLogger? get _parent {
    return activeLoggers[_logger.parent?.fullName];
  }

  /// Children of this logger in the logger hierarchy.
  final List<AWSLogger> _children = [];

  Never _pluginAlreadyRegistered(String pluginType) {
    final loggerInstance = '$runtimeTypeName($namespace)';
    throw StateError(
      'A plugin of type "$pluginType" is already registered to'
      ' "$loggerInstance" in the same logging hierarchy. Unregister the'
      ' existing plugin from "$loggerInstance" first and then register the'
      ' new plugin.',
    );
  }

  /// The namespace of this logger.
  String get namespace => _logger.fullName;

  /// Creates an [AWSLogger] with `this` as the parent.
  AWSLogger createChild(String name) {
    assert(name.isNotEmpty, 'Name should not be empty');
    return AWSLogger('$namespace.$name');
  }

  /// Returns a plugin of type [Plugin] registered to this
  /// logger hierarchy or `null`.
  Plugin? getPlugin<Plugin extends AWSLoggerPlugin>() {
    final registeredPlugin =
        _subscriptions.keys.firstWhereOrNull(
              (element) => element.runtimeType == Plugin,
            )
            as Plugin?;
    return registeredPlugin ?? _parent?.getPlugin<Plugin>();
  }

  /// Registers an [AWSLoggerPlugin] to handle logs emitted by this logger
  /// instance.
  ///
  /// Throws [StateError] if a plugin with same type is registered to this
  /// logger hierarchy.
  void registerPlugin<T extends AWSLoggerPlugin>(T plugin) {
    bool hasPlugin(AWSLogger logger) =>
        logger._subscriptions.keys.any((element) => element.runtimeType == T) ||
        logger._children.any(hasPlugin);

    if (getPlugin<T>() != null || _children.any(hasPlugin)) {
      _pluginAlreadyRegistered(T.toString());
    }

    _subscriptions[plugin] = _logger.onRecord
        .map((record) => record.toLogEntry())
        .listen(plugin.handleLogEntry);
  }

  /// Unregisters [plugin] from this logger instance.
  void unregisterPlugin(AWSLoggerPlugin plugin) {
    final currentSubscription = _subscriptions.remove(plugin);
    if (currentSubscription != null) {
      unawaited(currentSubscription.cancel());
    }
  }

  /// Unregisters all [AWSLoggerPlugin]s on this logger instance.
  void unregisterAllPlugins() {
    for (final subscription in _subscriptions.values) {
      unawaited(subscription.cancel());
    }
    _subscriptions.clear();
  }

  /// The minimum [LogLevel] that will be emitted by the logger.
  LogLevel get logLevel => _logger.level.logLevel;

  set logLevel(LogLevel logLevel) {
    _logger.level = logLevel.level;
  }

  /// Logs a [message] at the given [level].
  void log(
    LogLevel level,
    String message, [
    Object? error,
    StackTrace? stackTrace,
  ]) {
    _logger.log(level.level, message, error, stackTrace);
  }

  /// Logs a message with level [LogLevel.verbose].
  void verbose(String message, [Object? error, StackTrace? stackTrace]) {
    _logger.finer(message, error, stackTrace);
  }

  /// Logs a message with level [LogLevel.debug].
  void debug(String message, [Object? error, StackTrace? stackTrace]) {
    _logger.fine(message, error, stackTrace);
  }

  /// Logs a message with level [LogLevel.info].
  void info(String message, [Object? error, StackTrace? stackTrace]) {
    _logger.info(message, error, stackTrace);
  }

  /// Logs a message with level [LogLevel.warn].
  void warn(String message, [Object? error, StackTrace? stackTrace]) {
    _logger.warning(message, error, stackTrace);
  }

  /// Logs a message with level [LogLevel.error].
  void error(String message, [Object? error, StackTrace? stackTrace]) {
    _logger.severe(message, error, stackTrace);
  }

  @override
  void close() => unregisterAllPlugins();

  @override
  @mustBeOverridden
  String get runtimeTypeName => 'AWSLogger';
}

/// {@template aws_common.logging.aws_logger_plugin}
/// A plugin to an [AWSLogger] which handles log entries emitted at the
/// [LogLevel] of the logger instance.
/// {@endtemplate}
abstract class AWSLoggerPlugin {
  /// {@macro aws_common.logging.aws_logger_plugin}
  const AWSLoggerPlugin();

  /// Handles a log entry emitted by the [AWSLogger].
  void handleLogEntry(LogEntry logEntry);
}

/// Mixin providing an [AWSLogger] to AWS classes.
mixin AWSLoggerMixin on AWSDebuggable {
  /// The logger for this class.
  AWSLogger get logger => AWSLogger().createChild(runtimeTypeName);
}
