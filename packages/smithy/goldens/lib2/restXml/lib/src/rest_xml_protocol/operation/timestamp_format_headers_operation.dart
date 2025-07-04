// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library rest_xml_v2.rest_xml_protocol.operation.timestamp_format_headers_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:rest_xml_v2/src/rest_xml_protocol/common/endpoint_resolver.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/common/serializers.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/timestamp_format_headers_io.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

/// The example tests how timestamp request and response headers are serialized.
class TimestampFormatHeadersOperation
    extends
        _i1.HttpOperation<
          TimestampFormatHeadersIoPayload,
          TimestampFormatHeadersIo,
          TimestampFormatHeadersIoPayload,
          TimestampFormatHeadersIo
        > {
  /// The example tests how timestamp request and response headers are serialized.
  TimestampFormatHeadersOperation({
    required String region,
    Uri? baseUri,
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  }) : _region = region,
       _baseUri = baseUri,
       _requestInterceptors = requestInterceptors,
       _responseInterceptors = responseInterceptors;

  @override
  late final List<
    _i1.HttpProtocol<
      TimestampFormatHeadersIoPayload,
      TimestampFormatHeadersIo,
      TimestampFormatHeadersIoPayload,
      TimestampFormatHeadersIo
    >
  >
  protocols = [
    _i2.RestXmlProtocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors:
          <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.2'),
            const _i2.WithSdkInvocationId(),
            const _i2.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      noErrorWrapping: false,
    ),
  ];

  late final _i2.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(TimestampFormatHeadersIo input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/TimestampFormatHeaders';
        if (input.memberEpochSeconds != null) {
          b.headers['X-memberEpochSeconds'] = _i1.Timestamp(
            input.memberEpochSeconds!,
          ).format(_i1.TimestampFormat.epochSeconds).toString();
        }
        if (input.memberHttpDate != null) {
          b.headers['X-memberHttpDate'] = _i1.Timestamp(
            input.memberHttpDate!,
          ).format(_i1.TimestampFormat.httpDate).toString();
        }
        if (input.memberDateTime != null) {
          b.headers['X-memberDateTime'] = _i1.Timestamp(
            input.memberDateTime!,
          ).format(_i1.TimestampFormat.dateTime).toString();
        }
        if (input.defaultFormat != null) {
          b.headers['X-defaultFormat'] = _i1.Timestamp(
            input.defaultFormat!,
          ).format(_i1.TimestampFormat.httpDate).toString();
        }
        if (input.targetEpochSeconds != null) {
          b.headers['X-targetEpochSeconds'] = _i1.Timestamp(
            input.targetEpochSeconds!,
          ).format(_i1.TimestampFormat.epochSeconds).toString();
        }
        if (input.targetHttpDate != null) {
          b.headers['X-targetHttpDate'] = _i1.Timestamp(
            input.targetHttpDate!,
          ).format(_i1.TimestampFormat.httpDate).toString();
        }
        if (input.targetDateTime != null) {
          b.headers['X-targetDateTime'] = _i1.Timestamp(
            input.targetDateTime!,
          ).format(_i1.TimestampFormat.dateTime).toString();
        }
      });

  @override
  int successCode([TimestampFormatHeadersIo? output]) => 200;

  @override
  TimestampFormatHeadersIo buildOutput(
    TimestampFormatHeadersIoPayload payload,
    _i3.AWSBaseHttpResponse response,
  ) => TimestampFormatHeadersIo.fromResponse(payload, response);

  @override
  List<_i1.SmithyError> get errorTypes => const [];

  @override
  String get runtimeTypeName => 'TimestampFormatHeaders';

  @override
  _i2.AWSRetryer get retryer => _i2.AWSRetryer();

  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;

  @override
  _i1.SmithyOperation<TimestampFormatHeadersIo> run(
    TimestampFormatHeadersIo input, {
    _i3.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i4.runZoned(
      () => super.run(input, client: client, useProtocol: useProtocol),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i3.AWSHeaders.sdkInvocationId: _i3.uuid(secure: true)},
      },
    );
  }
}
