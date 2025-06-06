// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library rest_json1_v1.rest_json_protocol.model.post_player_action_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/player_action.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'post_player_action_input.g.dart';

abstract class PostPlayerActionInput
    with
        _i1.HttpInput<PostPlayerActionInput>,
        _i2.AWSEquatable<PostPlayerActionInput>
    implements Built<PostPlayerActionInput, PostPlayerActionInputBuilder> {
  factory PostPlayerActionInput({PlayerAction? action}) {
    return _$PostPlayerActionInput._(action: action);
  }

  factory PostPlayerActionInput.build([
    void Function(PostPlayerActionInputBuilder) updates,
  ]) = _$PostPlayerActionInput;

  const PostPlayerActionInput._();

  factory PostPlayerActionInput.fromRequest(
    PostPlayerActionInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => payload;

  static const List<_i1.SmithySerializer<PostPlayerActionInput>> serializers = [
    PostPlayerActionInputRestJson1Serializer(),
  ];

  PlayerAction? get action;
  @override
  PostPlayerActionInput getPayload() => this;

  @override
  List<Object?> get props => [action];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PostPlayerActionInput')
      ..add('action', action);
    return helper.toString();
  }
}

class PostPlayerActionInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<PostPlayerActionInput> {
  const PostPlayerActionInputRestJson1Serializer()
    : super('PostPlayerActionInput');

  @override
  Iterable<Type> get types => const [
    PostPlayerActionInput,
    _$PostPlayerActionInput,
  ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
    _i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
  ];

  @override
  PostPlayerActionInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PostPlayerActionInputBuilder();
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
    PostPlayerActionInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PostPlayerActionInput(:action) = object;
    if (action != null) {
      result$
        ..add('action')
        ..add(
          serializers.serialize(
            action,
            specifiedType: const FullType(PlayerAction),
          ),
        );
    }
    return result$;
  }
}
