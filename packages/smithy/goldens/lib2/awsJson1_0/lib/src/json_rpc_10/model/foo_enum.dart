// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_json1_0_v2.json_rpc_10.model.foo_enum; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FooEnum extends _i1.SmithyEnum<FooEnum> {
  const FooEnum._(super.index, super.name, super.value);

  const FooEnum._sdkUnknown(super.value) : super.sdkUnknown();

  static const bar = FooEnum._(0, 'BAR', 'Bar');

  static const baz = FooEnum._(1, 'BAZ', 'Baz');

  static const foo = FooEnum._(2, 'FOO', 'Foo');

  static const one = FooEnum._(3, 'ONE', '1');

  static const zero = FooEnum._(4, 'ZERO', '0');

  /// All values of [FooEnum].
  static const values = <FooEnum>[
    FooEnum.bar,
    FooEnum.baz,
    FooEnum.foo,
    FooEnum.one,
    FooEnum.zero,
  ];

  static const List<_i1.SmithySerializer<FooEnum>> serializers = [
    _i1.SmithyEnumSerializer(
      'FooEnum',
      values: values,
      sdkUnknown: FooEnum._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0'),
      ],
    ),
  ];
}

extension FooEnumHelpers on List<FooEnum> {
  /// Returns the value of [FooEnum] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FooEnum byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FooEnum] whose value matches [value].
  FooEnum byValue(String value) => firstWhere((el) => el.value == value);
}
