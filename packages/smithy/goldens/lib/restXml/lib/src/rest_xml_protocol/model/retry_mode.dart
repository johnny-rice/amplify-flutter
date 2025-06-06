// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library rest_xml_v1.rest_xml_protocol.model.retry_mode; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

/// Controls the strategy used for retries.
class RetryMode extends _i1.SmithyEnum<RetryMode> {
  const RetryMode._(super.index, super.name, super.value);

  const RetryMode._sdkUnknown(super.value) : super.sdkUnknown();

  static const adaptive = RetryMode._(0, 'ADAPTIVE', 'adaptive');

  static const legacy = RetryMode._(1, 'LEGACY', 'legacy');

  static const standard = RetryMode._(2, 'STANDARD', 'standard');

  /// All values of [RetryMode].
  static const values = <RetryMode>[
    RetryMode.adaptive,
    RetryMode.legacy,
    RetryMode.standard,
  ];

  static const List<_i1.SmithySerializer<RetryMode>> serializers = [
    _i1.SmithyEnumSerializer(
      'RetryMode',
      values: values,
      sdkUnknown: RetryMode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
      ],
    ),
  ];
}

extension RetryModeHelpers on List<RetryMode> {
  /// Returns the value of [RetryMode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RetryMode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RetryMode] whose value matches [value].
  RetryMode byValue(String value) => firstWhere((el) => el.value == value);
}
