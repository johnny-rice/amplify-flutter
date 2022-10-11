// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.invalid_role_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_role_exception.g.dart';

/// You have provided a null or empty role ARN.
abstract class InvalidRoleException
    with _i1.AWSEquatable<InvalidRoleException>
    implements
        Built<InvalidRoleException, InvalidRoleExceptionBuilder>,
        _i2.SmithyHttpException {
  /// You have provided a null or empty role ARN.
  factory InvalidRoleException({String? message}) {
    return _$InvalidRoleException._(message: message);
  }

  /// You have provided a null or empty role ARN.
  factory InvalidRoleException.build(
          [void Function(InvalidRoleExceptionBuilder) updates]) =
      _$InvalidRoleException;

  const InvalidRoleException._();

  /// Constructs a [InvalidRoleException] from a [payload] and [response].
  factory InvalidRoleException.fromResponse(
    InvalidRoleException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    InvalidRoleExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidRoleExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'InvalidRoleException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InvalidRoleException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class InvalidRoleExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<InvalidRoleException> {
  const InvalidRoleExceptionAwsJson11Serializer()
      : super('InvalidRoleException');

  @override
  Iterable<Type> get types => const [
        InvalidRoleException,
        _$InvalidRoleException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  InvalidRoleException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidRoleExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as InvalidRoleException);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}