// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library custom_v2.s3.model.copy_object_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'copy_object_result.g.dart';

abstract class CopyObjectResult
    with _i1.AWSEquatable<CopyObjectResult>
    implements Built<CopyObjectResult, CopyObjectResultBuilder> {
  factory CopyObjectResult({String? eTag}) {
    return _$CopyObjectResult._(eTag: eTag);
  }

  factory CopyObjectResult.build([
    void Function(CopyObjectResultBuilder) updates,
  ]) = _$CopyObjectResult;

  const CopyObjectResult._();

  static const List<_i2.SmithySerializer<CopyObjectResult>> serializers = [
    CopyObjectResultRestXmlSerializer(),
  ];

  String? get eTag;
  @override
  List<Object?> get props => [eTag];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CopyObjectResult')
      ..add('eTag', eTag);
    return helper.toString();
  }
}

class CopyObjectResultRestXmlSerializer
    extends _i2.StructuredSmithySerializer<CopyObjectResult> {
  const CopyObjectResultRestXmlSerializer() : super('CopyObjectResult');

  @override
  Iterable<Type> get types => const [CopyObjectResult, _$CopyObjectResult];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  CopyObjectResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CopyObjectResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ETag':
          result.eTag =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CopyObjectResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CopyObjectResult',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      ),
    ];
    final CopyObjectResult(:eTag) = object;
    if (eTag != null) {
      result$
        ..add(const _i2.XmlElementName('ETag'))
        ..add(
          serializers.serialize(eTag, specifiedType: const FullType(String)),
        );
    }
    return result$;
  }
}
