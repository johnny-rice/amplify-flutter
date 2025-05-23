// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library rest_json1_v1.rest_json_validation_protocol.model.recursive_structures_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/recursive_union_one.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'recursive_structures_input.g.dart';

abstract class RecursiveStructuresInput
    with
        _i1.HttpInput<RecursiveStructuresInput>,
        _i2.AWSEquatable<RecursiveStructuresInput>
    implements
        Built<RecursiveStructuresInput, RecursiveStructuresInputBuilder> {
  factory RecursiveStructuresInput({RecursiveUnionOne? union}) {
    return _$RecursiveStructuresInput._(union: union);
  }

  factory RecursiveStructuresInput.build([
    void Function(RecursiveStructuresInputBuilder) updates,
  ]) = _$RecursiveStructuresInput;

  const RecursiveStructuresInput._();

  factory RecursiveStructuresInput.fromRequest(
    RecursiveStructuresInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => payload;

  static const List<_i1.SmithySerializer<RecursiveStructuresInput>>
  serializers = [RecursiveStructuresInputRestJson1Serializer()];

  RecursiveUnionOne? get union;
  @override
  RecursiveStructuresInput getPayload() => this;

  @override
  List<Object?> get props => [union];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RecursiveStructuresInput')
      ..add('union', union);
    return helper.toString();
  }
}

class RecursiveStructuresInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<RecursiveStructuresInput> {
  const RecursiveStructuresInputRestJson1Serializer()
    : super('RecursiveStructuresInput');

  @override
  Iterable<Type> get types => const [
    RecursiveStructuresInput,
    _$RecursiveStructuresInput,
  ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
    _i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
  ];

  @override
  RecursiveStructuresInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecursiveStructuresInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'union':
          result.union =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(RecursiveUnionOne),
                  )
                  as RecursiveUnionOne);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RecursiveStructuresInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RecursiveStructuresInput(:union) = object;
    if (union != null) {
      result$
        ..add('union')
        ..add(
          serializers.serialize(
            union,
            specifiedType: const FullType(RecursiveUnionOne),
          ),
        );
    }
    return result$;
  }
}
