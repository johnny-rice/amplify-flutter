// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library ec2_query_v1.ec2_protocol.model.greeting_struct; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'greeting_struct.g.dart';

abstract class GreetingStruct
    with _i1.AWSEquatable<GreetingStruct>
    implements Built<GreetingStruct, GreetingStructBuilder> {
  factory GreetingStruct({String? hi}) {
    return _$GreetingStruct._(hi: hi);
  }

  factory GreetingStruct.build([void Function(GreetingStructBuilder) updates]) =
      _$GreetingStruct;

  const GreetingStruct._();

  static const List<_i2.SmithySerializer<GreetingStruct>> serializers = [
    GreetingStructEc2QuerySerializer(),
  ];

  String? get hi;
  @override
  List<Object?> get props => [hi];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GreetingStruct')..add('hi', hi);
    return helper.toString();
  }
}

class GreetingStructEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<GreetingStruct> {
  const GreetingStructEc2QuerySerializer() : super('GreetingStruct');

  @override
  Iterable<Type> get types => const [GreetingStruct, _$GreetingStruct];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'ec2Query'),
  ];

  @override
  GreetingStruct deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GreetingStructBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'hi':
          result.hi =
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
    GreetingStruct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GreetingStructResponse',
        _i2.XmlNamespace('https://example.com/'),
      ),
    ];
    final GreetingStruct(:hi) = object;
    if (hi != null) {
      result$
        ..add(const _i2.XmlElementName('Hi'))
        ..add(serializers.serialize(hi, specifiedType: const FullType(String)));
    }
    return result$;
  }
}
