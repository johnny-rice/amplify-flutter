// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library rest_json1_v1.rest_json_protocol.model.malformed_integer_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_integer_input.g.dart';

abstract class MalformedIntegerInput
    with
        _i1.HttpInput<MalformedIntegerInputPayload>,
        _i2.AWSEquatable<MalformedIntegerInput>
    implements
        Built<MalformedIntegerInput, MalformedIntegerInputBuilder>,
        _i1.HasPayload<MalformedIntegerInputPayload> {
  factory MalformedIntegerInput({
    int? integerInBody,
    required int integerInPath,
    int? integerInQuery,
    int? integerInHeader,
  }) {
    return _$MalformedIntegerInput._(
      integerInBody: integerInBody,
      integerInPath: integerInPath,
      integerInQuery: integerInQuery,
      integerInHeader: integerInHeader,
    );
  }

  factory MalformedIntegerInput.build([
    void Function(MalformedIntegerInputBuilder) updates,
  ]) = _$MalformedIntegerInput;

  const MalformedIntegerInput._();

  factory MalformedIntegerInput.fromRequest(
    MalformedIntegerInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => MalformedIntegerInput.build((b) {
    b.integerInBody = payload.integerInBody;
    if (request.headers['integerInHeader'] != null) {
      b.integerInHeader = int.parse(request.headers['integerInHeader']!);
    }
    if (request.queryParameters['integerInQuery'] != null) {
      b.integerInQuery = int.parse(request.queryParameters['integerInQuery']!);
    }
    if (labels['integerInPath'] != null) {
      b.integerInPath = int.parse(labels['integerInPath']!);
    }
  });

  static const List<_i1.SmithySerializer<MalformedIntegerInputPayload>>
  serializers = [MalformedIntegerInputRestJson1Serializer()];

  int? get integerInBody;
  int get integerInPath;
  int? get integerInQuery;
  int? get integerInHeader;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'integerInPath':
        return integerInPath.toString();
    }
    throw _i1.MissingLabelException(this, key);
  }

  @override
  MalformedIntegerInputPayload getPayload() =>
      MalformedIntegerInputPayload((b) {
        b.integerInBody = integerInBody;
      });

  @override
  List<Object?> get props => [
    integerInBody,
    integerInPath,
    integerInQuery,
    integerInHeader,
  ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedIntegerInput')
      ..add('integerInBody', integerInBody)
      ..add('integerInPath', integerInPath)
      ..add('integerInQuery', integerInQuery)
      ..add('integerInHeader', integerInHeader);
    return helper.toString();
  }
}

@_i3.internal
abstract class MalformedIntegerInputPayload
    with _i2.AWSEquatable<MalformedIntegerInputPayload>
    implements
        Built<
          MalformedIntegerInputPayload,
          MalformedIntegerInputPayloadBuilder
        > {
  factory MalformedIntegerInputPayload([
    void Function(MalformedIntegerInputPayloadBuilder) updates,
  ]) = _$MalformedIntegerInputPayload;

  const MalformedIntegerInputPayload._();

  int? get integerInBody;
  @override
  List<Object?> get props => [integerInBody];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedIntegerInputPayload')
      ..add('integerInBody', integerInBody);
    return helper.toString();
  }
}

class MalformedIntegerInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedIntegerInputPayload> {
  const MalformedIntegerInputRestJson1Serializer()
    : super('MalformedIntegerInput');

  @override
  Iterable<Type> get types => const [
    MalformedIntegerInput,
    _$MalformedIntegerInput,
    MalformedIntegerInputPayload,
    _$MalformedIntegerInputPayload,
  ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
    _i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
  ];

  @override
  MalformedIntegerInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedIntegerInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'integerInBody':
          result.integerInBody =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )
                  as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MalformedIntegerInputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MalformedIntegerInputPayload(:integerInBody) = object;
    if (integerInBody != null) {
      result$
        ..add('integerInBody')
        ..add(
          serializers.serialize(
            integerInBody,
            specifiedType: const FullType(int),
          ),
        );
    }
    return result$;
  }
}
