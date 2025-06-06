// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library rest_xml_v2.rest_xml_protocol.operation.query_precedence_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i4;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:rest_xml_v2/src/rest_xml_protocol/common/endpoint_resolver.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/common/serializers.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/query_precedence_input.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i2;

class QueryPrecedenceOperation
    extends
        _i1.HttpOperation<
          QueryPrecedenceInputPayload,
          QueryPrecedenceInput,
          _i1.Unit,
          _i1.Unit
        > {
  QueryPrecedenceOperation({
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
      QueryPrecedenceInputPayload,
      QueryPrecedenceInput,
      _i1.Unit,
      _i1.Unit
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
  _i1.HttpRequest buildRequest(QueryPrecedenceInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/Precedence';
        if (input.foo != null) {
          b.queryParameters.add('bar', input.foo!);
        }
        if (input.baz != null) {
          for (var entry in input.baz!.toMap().entries) {
            b.queryParameters.add(entry.key, entry.value);
          }
        }
      });

  @override
  int successCode([_i1.Unit? output]) => 200;

  @override
  _i1.Unit buildOutput(_i1.Unit payload, _i3.AWSBaseHttpResponse response) =>
      payload;

  @override
  List<_i1.SmithyError> get errorTypes => const [];

  @override
  String get runtimeTypeName => 'QueryPrecedence';

  @override
  _i2.AWSRetryer get retryer => _i2.AWSRetryer();

  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;

  @override
  _i1.SmithyOperation<_i1.Unit> run(
    QueryPrecedenceInput input, {
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
