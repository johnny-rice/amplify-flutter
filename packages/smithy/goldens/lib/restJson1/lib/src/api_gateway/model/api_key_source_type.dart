// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library rest_json1_v1.api_gateway.model.api_key_source_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ApiKeySourceType extends _i1.SmithyEnum<ApiKeySourceType> {
  const ApiKeySourceType._(super.index, super.name, super.value);

  const ApiKeySourceType._sdkUnknown(super.value) : super.sdkUnknown();

  static const authorizer = ApiKeySourceType._(0, 'AUTHORIZER', 'AUTHORIZER');

  static const header = ApiKeySourceType._(1, 'HEADER', 'HEADER');

  /// All values of [ApiKeySourceType].
  static const values = <ApiKeySourceType>[
    ApiKeySourceType.authorizer,
    ApiKeySourceType.header,
  ];

  static const List<_i1.SmithySerializer<ApiKeySourceType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ApiKeySourceType',
      values: values,
      sdkUnknown: ApiKeySourceType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
      ],
    ),
  ];
}

extension ApiKeySourceTypeHelpers on List<ApiKeySourceType> {
  /// Returns the value of [ApiKeySourceType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ApiKeySourceType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ApiKeySourceType] whose value matches [value].
  ApiKeySourceType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
