// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_analytics_pinpoint_dart.pinpoint.model.endpoint_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/channel_type.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_demographic.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_location.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_user.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'endpoint_request.g.dart';

/// Specifies the channel type and other settings for an endpoint.
abstract class EndpointRequest
    with _i1.AWSEquatable<EndpointRequest>
    implements Built<EndpointRequest, EndpointRequestBuilder> {
  /// Specifies the channel type and other settings for an endpoint.
  factory EndpointRequest({
    String? address,
    Map<String, List<String>>? attributes,
    ChannelType? channelType,
    EndpointDemographic? demographic,
    String? effectiveDate,
    String? endpointStatus,
    EndpointLocation? location,
    Map<String, double>? metrics,
    String? optOut,
    String? requestId,
    EndpointUser? user,
  }) {
    return _$EndpointRequest._(
      address: address,
      attributes: attributes == null ? null : _i2.BuiltListMultimap(attributes),
      channelType: channelType,
      demographic: demographic,
      effectiveDate: effectiveDate,
      endpointStatus: endpointStatus,
      location: location,
      metrics: metrics == null ? null : _i2.BuiltMap(metrics),
      optOut: optOut,
      requestId: requestId,
      user: user,
    );
  }

  /// Specifies the channel type and other settings for an endpoint.
  factory EndpointRequest.build([
    void Function(EndpointRequestBuilder) updates,
  ]) = _$EndpointRequest;

  const EndpointRequest._();

  static const List<_i3.SmithySerializer<EndpointRequest>> serializers = [
    EndpointRequestRestJson1Serializer(),
  ];

  /// The destination address for messages or push notifications that you send to the endpoint. The address varies by channel. For a push-notification channel, use the token provided by the push notification service, such as an Apple Push Notification service (APNs) device token or a Firebase Cloud Messaging (FCM) registration token. For the SMS channel, use a phone number in E.164 format, such as +12065550100. For the email channel, use an email address.
  String? get address;

  /// One or more custom attributes that describe the endpoint by associating a name with an array of values. For example, the value of a custom attribute named Interests might be: \["Science", "Music", "Travel"\]. You can use these attributes as filter criteria when you create segments. Attribute names are case sensitive.
  ///
  /// An attribute name can contain up to 50 characters. An attribute value can contain up to 100 characters. When you define the name of a custom attribute, avoid using the following characters: number sign (#), colon (:), question mark (?), backslash (\\), and slash (/). The Amazon Pinpoint console can't display attribute names that contain these characters. This restriction doesn't apply to attribute values.
  _i2.BuiltListMultimap<String, String>? get attributes;

  /// The channel to use when sending messages or push notifications to the endpoint.
  ChannelType? get channelType;

  /// The demographic information for the endpoint, such as the time zone and platform.
  EndpointDemographic? get demographic;

  /// The date and time, in ISO 8601 format, when the endpoint is updated.
  String? get effectiveDate;

  /// Specifies whether to send messages or push notifications to the endpoint. Valid values are: ACTIVE, messages are sent to the endpoint; and, INACTIVE, messages aren’t sent to the endpoint.
  ///
  /// Amazon Pinpoint automatically sets this value to ACTIVE when you create an endpoint or update an existing endpoint. Amazon Pinpoint automatically sets this value to INACTIVE if you update another endpoint that has the same address specified by the Address property.
  String? get endpointStatus;

  /// The geographic information for the endpoint.
  EndpointLocation? get location;

  /// One or more custom metrics that your app reports to Amazon Pinpoint for the endpoint.
  _i2.BuiltMap<String, double>? get metrics;

  /// Specifies whether the user who's associated with the endpoint has opted out of receiving messages and push notifications from you. Possible values are: ALL, the user has opted out and doesn't want to receive any messages or push notifications; and, NONE, the user hasn't opted out and wants to receive all messages and push notifications.
  String? get optOut;

  /// The unique identifier for the most recent request to update the endpoint.
  String? get requestId;

  /// One or more custom attributes that describe the user who's associated with the endpoint.
  EndpointUser? get user;
  @override
  List<Object?> get props => [
    address,
    attributes,
    channelType,
    demographic,
    effectiveDate,
    endpointStatus,
    location,
    metrics,
    optOut,
    requestId,
    user,
  ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EndpointRequest')
      ..add('address', address)
      ..add('attributes', attributes)
      ..add('channelType', channelType)
      ..add('demographic', demographic)
      ..add('effectiveDate', effectiveDate)
      ..add('endpointStatus', endpointStatus)
      ..add('location', location)
      ..add('metrics', metrics)
      ..add('optOut', optOut)
      ..add('requestId', requestId)
      ..add('user', user);
    return helper.toString();
  }
}

class EndpointRequestRestJson1Serializer
    extends _i3.StructuredSmithySerializer<EndpointRequest> {
  const EndpointRequestRestJson1Serializer() : super('EndpointRequest');

  @override
  Iterable<Type> get types => const [EndpointRequest, _$EndpointRequest];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restJson1'),
  ];
  @override
  EndpointRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EndpointRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Address':
          result.address =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'Attributes':
          result.attributes.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.BuiltListMultimap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i2.BuiltListMultimap<String, String>),
          );
        case 'ChannelType':
          result.channelType =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(ChannelType),
                  )
                  as ChannelType);
        case 'Demographic':
          result.demographic.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(EndpointDemographic),
                )
                as EndpointDemographic),
          );
        case 'EffectiveDate':
          result.effectiveDate =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'EndpointStatus':
          result.endpointStatus =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'Location':
          result.location.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(EndpointLocation),
                )
                as EndpointLocation),
          );
        case 'Metrics':
          result.metrics.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i2.BuiltMap, [
                    FullType(String),
                    FullType(double),
                  ]),
                )
                as _i2.BuiltMap<String, double>),
          );
        case 'OptOut':
          result.optOut =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'RequestId':
          result.requestId =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'User':
          result.user.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(EndpointUser),
                )
                as EndpointUser),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EndpointRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final EndpointRequest(
      :address,
      :attributes,
      :channelType,
      :demographic,
      :effectiveDate,
      :endpointStatus,
      :location,
      :metrics,
      :optOut,
      :requestId,
      :user,
    ) = object;
    if (address != null) {
      result$
        ..add('Address')
        ..add(
          serializers.serialize(address, specifiedType: const FullType(String)),
        );
    }
    if (attributes != null) {
      result$
        ..add('Attributes')
        ..add(
          serializers.serialize(
            attributes,
            specifiedType: const FullType(_i2.BuiltListMultimap, [
              FullType(String),
              FullType(String),
            ]),
          ),
        );
    }
    if (channelType != null) {
      result$
        ..add('ChannelType')
        ..add(
          serializers.serialize(
            channelType,
            specifiedType: const FullType(ChannelType),
          ),
        );
    }
    if (demographic != null) {
      result$
        ..add('Demographic')
        ..add(
          serializers.serialize(
            demographic,
            specifiedType: const FullType(EndpointDemographic),
          ),
        );
    }
    if (effectiveDate != null) {
      result$
        ..add('EffectiveDate')
        ..add(
          serializers.serialize(
            effectiveDate,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (endpointStatus != null) {
      result$
        ..add('EndpointStatus')
        ..add(
          serializers.serialize(
            endpointStatus,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (location != null) {
      result$
        ..add('Location')
        ..add(
          serializers.serialize(
            location,
            specifiedType: const FullType(EndpointLocation),
          ),
        );
    }
    if (metrics != null) {
      result$
        ..add('Metrics')
        ..add(
          serializers.serialize(
            metrics,
            specifiedType: const FullType(_i2.BuiltMap, [
              FullType(String),
              FullType(double),
            ]),
          ),
        );
    }
    if (optOut != null) {
      result$
        ..add('OptOut')
        ..add(
          serializers.serialize(optOut, specifiedType: const FullType(String)),
        );
    }
    if (requestId != null) {
      result$
        ..add('RequestId')
        ..add(
          serializers.serialize(
            requestId,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (user != null) {
      result$
        ..add('User')
        ..add(
          serializers.serialize(
            user,
            specifiedType: const FullType(EndpointUser),
          ),
        );
    }
    return result$;
  }
}
