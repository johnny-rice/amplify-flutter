// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library rest_json1_v1.rest_json_protocol.model.post_player_action_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/player_action.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'post_player_action_output.g.dart';

abstract class PostPlayerActionOutput
    with _i1.AWSEquatable<PostPlayerActionOutput>
    implements Built<PostPlayerActionOutput, PostPlayerActionOutputBuilder> {
  factory PostPlayerActionOutput({required PlayerAction action}) {
    return _$PostPlayerActionOutput._(action: action);
  }

  factory PostPlayerActionOutput.build([
    void Function(PostPlayerActionOutputBuilder) updates,
  ]) = _$PostPlayerActionOutput;

  const PostPlayerActionOutput._();

  /// Constructs a [PostPlayerActionOutput] from a [payload] and [response].
  factory PostPlayerActionOutput.fromResponse(
    PostPlayerActionOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) => payload;

  static const List<_i2.SmithySerializer<PostPlayerActionOutput>> serializers =
      [PostPlayerActionOutputRestJson1Serializer()];

  PlayerAction get action;
  @override
  List<Object?> get props => [action];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PostPlayerActionOutput')
      ..add('action', action);
    return helper.toString();
  }
}

class PostPlayerActionOutputRestJson1Serializer
    extends _i2.StructuredSmithySerializer<PostPlayerActionOutput> {
  const PostPlayerActionOutputRestJson1Serializer()
    : super('PostPlayerActionOutput');

  @override
  Iterable<Type> get types => const [
    PostPlayerActionOutput,
    _$PostPlayerActionOutput,
  ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
  ];

  @override
  PostPlayerActionOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostPlayerActionOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'action':
          result.action =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(PlayerAction),
                  )
                  as PlayerAction);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PostPlayerActionOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PostPlayerActionOutput(:action) = object;
    result$.addAll([
      'action',
      serializers.serialize(
        action,
        specifiedType: const FullType(PlayerAction),
      ),
    ]);
    return result$;
  }
}
