// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/config/amplify_outputs/analytics/amazon_pinpoint_outputs.dart';
import 'package:amplify_core/src/config/amplify_outputs/analytics/analytics_outputs.dart';
import 'package:meta/meta.dart';

export 'pinpoint_config.dart' hide PinpointPluginConfigFactory;

part 'analytics_config.g.dart';

/// {@template amplify_core.analytics_config}
/// The Analytics category configuration.
/// {@endtemplate}
@zAmplifySerializable
class AnalyticsConfig extends AmplifyPluginConfigMap {
  /// {@macro amplify_core.analytics_config}
  const AnalyticsConfig({required Map<String, AmplifyPluginConfig> plugins})
    : super(plugins);

  factory AnalyticsConfig.fromJson(Map<String, Object?> json) =>
      _$AnalyticsConfigFromJson(json);

  /// The AWS Pinpoint plugin configuration, if available.
  @override
  PinpointPluginConfig? get awsPlugin =>
      plugins[PinpointPluginConfig.pluginKey] as PinpointPluginConfig?;

  @override
  AnalyticsConfig copy() => AnalyticsConfig(plugins: Map.of(plugins));

  @override
  Map<String, Object?> toJson() => _$AnalyticsConfigToJson(this);

  @internal
  AnalyticsOutputs? toAnalyticsOutputs() {
    final plugin = awsPlugin?.pinpointAnalytics;
    if (plugin == null) {
      return null;
    }
    final awsRegion = plugin.region;
    final appId = plugin.appId;
    return AnalyticsOutputs(
      amazonPinpoint: AmazonPinpointOutputs(awsRegion: awsRegion, appId: appId),
    );
  }
}
