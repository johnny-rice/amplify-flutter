// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library aws_json1_1_v2.json_protocol.test.host_with_path_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_json1_1_v2/src/json_protocol/operation/host_with_path_operation.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('AwsJson11HostWithPath (request)', () async {
    await _i2.httpRequestTest(
      operation: HostWithPathOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com/custom'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'AwsJson11HostWithPath',
        documentation: 'Custom endpoints supplied by users can have paths',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{}',
        bodyMediaType: null,
        params: {},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.HostWithPathOperation',
        },
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        method: 'POST',
        uri: '/custom/',
        host: 'example.com/custom',
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [],
    );
  });
}
