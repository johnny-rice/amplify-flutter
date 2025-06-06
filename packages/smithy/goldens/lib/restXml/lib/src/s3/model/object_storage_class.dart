// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library rest_xml_v1.s3.model.object_storage_class; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ObjectStorageClass extends _i1.SmithyEnum<ObjectStorageClass> {
  const ObjectStorageClass._(super.index, super.name, super.value);

  const ObjectStorageClass._sdkUnknown(super.value) : super.sdkUnknown();

  static const deepArchive = ObjectStorageClass._(
    0,
    'DEEP_ARCHIVE',
    'DEEP_ARCHIVE',
  );

  static const glacier = ObjectStorageClass._(1, 'GLACIER', 'GLACIER');

  static const intelligentTiering = ObjectStorageClass._(
    2,
    'INTELLIGENT_TIERING',
    'INTELLIGENT_TIERING',
  );

  static const onezoneIa = ObjectStorageClass._(3, 'ONEZONE_IA', 'ONEZONE_IA');

  static const outposts = ObjectStorageClass._(4, 'OUTPOSTS', 'OUTPOSTS');

  static const reducedRedundancy = ObjectStorageClass._(
    5,
    'REDUCED_REDUNDANCY',
    'REDUCED_REDUNDANCY',
  );

  static const standard = ObjectStorageClass._(6, 'STANDARD', 'STANDARD');

  static const standardIa = ObjectStorageClass._(
    7,
    'STANDARD_IA',
    'STANDARD_IA',
  );

  /// All values of [ObjectStorageClass].
  static const values = <ObjectStorageClass>[
    ObjectStorageClass.deepArchive,
    ObjectStorageClass.glacier,
    ObjectStorageClass.intelligentTiering,
    ObjectStorageClass.onezoneIa,
    ObjectStorageClass.outposts,
    ObjectStorageClass.reducedRedundancy,
    ObjectStorageClass.standard,
    ObjectStorageClass.standardIa,
  ];

  static const List<_i1.SmithySerializer<ObjectStorageClass>> serializers = [
    _i1.SmithyEnumSerializer(
      'ObjectStorageClass',
      values: values,
      sdkUnknown: ObjectStorageClass._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
      ],
    ),
  ];
}

extension ObjectStorageClassHelpers on List<ObjectStorageClass> {
  /// Returns the value of [ObjectStorageClass] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ObjectStorageClass byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ObjectStorageClass] whose value matches [value].
  ObjectStorageClass byValue(String value) =>
      firstWhere((el) => el.value == value);
}
