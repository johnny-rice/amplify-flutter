// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.unmodifiable_entity_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'unmodifiable_entity_exception.g.dart';

/// The request was rejected because only the service that depends on the service-linked role can modify or delete the role on your behalf. The error message includes the name of the service that depends on this service-linked role. You must request the change through that service.
abstract class UnmodifiableEntityException
    with _i1.AWSEquatable<UnmodifiableEntityException>
    implements
        Built<UnmodifiableEntityException, UnmodifiableEntityExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request was rejected because only the service that depends on the service-linked role can modify or delete the role on your behalf. The error message includes the name of the service that depends on this service-linked role. You must request the change through that service.
  factory UnmodifiableEntityException({String? message}) {
    return _$UnmodifiableEntityException._(message: message);
  }

  /// The request was rejected because only the service that depends on the service-linked role can modify or delete the role on your behalf. The error message includes the name of the service that depends on this service-linked role. You must request the change through that service.
  factory UnmodifiableEntityException.build(
          [void Function(UnmodifiableEntityExceptionBuilder) updates]) =
      _$UnmodifiableEntityException;

  const UnmodifiableEntityException._();

  /// Constructs a [UnmodifiableEntityException] from a [payload] and [response].
  factory UnmodifiableEntityException.fromResponse(
    UnmodifiableEntityException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    UnmodifiableEntityExceptionAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnmodifiableEntityExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.iam',
        shape: 'UnmodifiableEntityException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 400;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UnmodifiableEntityException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class UnmodifiableEntityExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<UnmodifiableEntityException> {
  const UnmodifiableEntityExceptionAwsQuerySerializer()
      : super('UnmodifiableEntityException');

  @override
  Iterable<Type> get types => const [
        UnmodifiableEntityException,
        _$UnmodifiableEntityException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UnmodifiableEntityException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnmodifiableEntityExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
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
    final payload = (object as UnmodifiableEntityException);
    final result = <Object?>[
      const _i2.XmlElementName(
        'UnmodifiableEntityExceptionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.message != null) {
      result
        ..add(const _i2.XmlElementName('message'))
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}