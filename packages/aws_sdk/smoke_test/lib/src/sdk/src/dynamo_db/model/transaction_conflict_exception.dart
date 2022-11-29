// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.transaction_conflict_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'transaction_conflict_exception.g.dart';

/// Operation was rejected because there is an ongoing transaction for the item.
abstract class TransactionConflictException
    with
        _i1.AWSEquatable<TransactionConflictException>
    implements
        Built<TransactionConflictException,
            TransactionConflictExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Operation was rejected because there is an ongoing transaction for the item.
  factory TransactionConflictException({String? message}) {
    return _$TransactionConflictException._(message: message);
  }

  /// Operation was rejected because there is an ongoing transaction for the item.
  factory TransactionConflictException.build(
          [void Function(TransactionConflictExceptionBuilder) updates]) =
      _$TransactionConflictException;

  const TransactionConflictException._();

  /// Constructs a [TransactionConflictException] from a [payload] and [response].
  factory TransactionConflictException.fromResponse(
    TransactionConflictException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    TransactionConflictExceptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransactionConflictExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'TransactionConflictException',
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
    final helper = newBuiltValueToStringHelper('TransactionConflictException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class TransactionConflictExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<TransactionConflictException> {
  const TransactionConflictExceptionAwsJson10Serializer()
      : super('TransactionConflictException');

  @override
  Iterable<Type> get types => const [
        TransactionConflictException,
        _$TransactionConflictException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  TransactionConflictException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransactionConflictExceptionBuilder();
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
    final payload = (object as TransactionConflictException);
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
