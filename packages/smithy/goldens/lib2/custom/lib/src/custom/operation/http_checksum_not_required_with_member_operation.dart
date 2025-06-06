// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library custom_v2.custom.operation.http_checksum_not_required_with_member_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i5;
import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i4;
import 'package:custom_v2/src/custom/common/endpoint_resolver.dart';
import 'package:custom_v2/src/custom/common/serializers.dart';
import 'package:custom_v2/src/custom/model/http_checksum_not_required_with_member_input.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class HttpChecksumNotRequiredWithMemberOperation
    extends
        _i1.HttpOperation<
          _i2.Uint8List,
          HttpChecksumNotRequiredWithMemberInput,
          _i1.Unit,
          _i1.Unit
        > {
  HttpChecksumNotRequiredWithMemberOperation({
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
      _i2.Uint8List,
      HttpChecksumNotRequiredWithMemberInput,
      _i1.Unit,
      _i1.Unit
    >
  >
  protocols = [
    _i3.RestJson1Protocol(
      serializers: serializers,
      builderFactories: builderFactories,
      requestInterceptors:
          <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.2'),
            const _i3.WithSdkInvocationId(),
            const _i3.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
    ),
  ];

  late final _i3.AWSEndpoint _awsEndpoint = endpointResolver.resolve(
    sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(HttpChecksumNotRequiredWithMemberInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/notRequiredWithMember';
        if (input.checksumAlgorithm != null) {
          b.headers['x-amz-request-algorithm'] = input.checksumAlgorithm!.value;
        }
        if (input.checksumAlgorithm != null) {
          b.requestInterceptors.add(
            _i3.WithChecksum(input.checksumAlgorithm!.value),
          );
        }
      });

  @override
  int successCode([_i1.Unit? output]) => 200;

  @override
  _i1.Unit buildOutput(_i1.Unit payload, _i4.AWSBaseHttpResponse response) =>
      payload;

  @override
  List<_i1.SmithyError> get errorTypes => const [];

  @override
  String get runtimeTypeName => 'HttpChecksumNotRequiredWithMember';

  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();

  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;

  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;

  @override
  _i1.SmithyOperation<_i1.Unit> run(
    HttpChecksumNotRequiredWithMemberInput input, {
    _i4.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i5.runZoned(
      () => super.run(input, client: client, useProtocol: useProtocol),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i4.AWSHeaders.sdkInvocationId: _i4.uuid(secure: true)},
      },
    );
  }
}
