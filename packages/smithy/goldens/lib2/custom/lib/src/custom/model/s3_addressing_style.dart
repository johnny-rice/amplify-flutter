// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library custom_v2.custom.model.s3_addressing_style; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

/// Controls the S3 addressing bucket style.
class S3AddressingStyle extends _i1.SmithyEnum<S3AddressingStyle> {
  const S3AddressingStyle._(super.index, super.name, super.value);

  const S3AddressingStyle._sdkUnknown(super.value) : super.sdkUnknown();

  static const auto = S3AddressingStyle._(0, 'AUTO', 'auto');

  static const path = S3AddressingStyle._(1, 'PATH', 'path');

  static const virtual = S3AddressingStyle._(2, 'VIRTUAL', 'virtual');

  /// All values of [S3AddressingStyle].
  static const values = <S3AddressingStyle>[
    S3AddressingStyle.auto,
    S3AddressingStyle.path,
    S3AddressingStyle.virtual,
  ];

  static const List<_i1.SmithySerializer<S3AddressingStyle>> serializers = [
    _i1.SmithyEnumSerializer(
      'S3AddressingStyle',
      values: values,
      sdkUnknown: S3AddressingStyle._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
      ],
    ),
  ];
}

extension S3AddressingStyleHelpers on List<S3AddressingStyle> {
  /// Returns the value of [S3AddressingStyle] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  S3AddressingStyle byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [S3AddressingStyle] whose value matches [value].
  S3AddressingStyle byValue(String value) =>
      firstWhere((el) => el.value == value);
}
