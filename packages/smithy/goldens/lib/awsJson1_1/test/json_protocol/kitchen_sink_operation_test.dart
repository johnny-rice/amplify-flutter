// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library aws_json1_1_v1.json_protocol.test.kitchen_sink_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i5;

import 'package:aws_json1_1_v1/src/json_protocol/model/empty_struct.dart';
import 'package:aws_json1_1_v1/src/json_protocol/model/error_with_members.dart';
import 'package:aws_json1_1_v1/src/json_protocol/model/error_without_members.dart';
import 'package:aws_json1_1_v1/src/json_protocol/model/kitchen_sink.dart';
import 'package:aws_json1_1_v1/src/json_protocol/model/simple_struct.dart';
import 'package:aws_json1_1_v1/src/json_protocol/model/struct_with_json_name.dart';
import 'package:aws_json1_1_v1/src/json_protocol/operation/kitchen_sink_operation.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/json_object.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i8;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('serializes_string_shapes (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_string_shapes',
        documentation: 'Serializes string shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"String":"abc xyz"}',
        bodyMediaType: 'application/json',
        params: {'String': 'abc xyz'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('serializes_string_shapes_with_jsonvalue_trait (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_string_shapes_with_jsonvalue_trait',
        documentation: 'Serializes string shapes with jsonvalue trait',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body:
            '{"JsonValue":"{\\"string\\":\\"value\\",\\"number\\":1234.5,\\"boolTrue\\":true,\\"boolFalse\\":false,\\"array\\":[1,2,3,4],\\"object\\":{\\"key\\":\\"value\\"},\\"null\\":null}"}',
        bodyMediaType: 'application/json',
        params: {
          'JsonValue':
              '{"string":"value","number":1234.5,"boolTrue":true,"boolFalse":false,"array":[1,2,3,4],"object":{"key":"value"},"null":null}',
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('serializes_integer_shapes (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_integer_shapes',
        documentation: 'Serializes integer shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"Integer":1234}',
        bodyMediaType: 'application/json',
        params: {'Integer': 1234},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('serializes_long_shapes (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_long_shapes',
        documentation: 'Serializes long shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"Long":999999999999}',
        bodyMediaType: 'application/json',
        params: {'Long': 999999999999},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('serializes_float_shapes (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_float_shapes',
        documentation: 'Serializes float shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"Float":1234.5}',
        bodyMediaType: 'application/json',
        params: {'Float': 1234.5},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('serializes_double_shapes (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_double_shapes',
        documentation: 'Serializes double shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"Double":1234.5}',
        bodyMediaType: 'application/json',
        params: {'Double': 1234.5},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('serializes_blob_shapes (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_blob_shapes',
        documentation: 'Serializes blob shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"Blob":"YmluYXJ5LXZhbHVl"}',
        bodyMediaType: 'application/json',
        params: {'Blob': 'binary-value'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('serializes_boolean_shapes_true (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_boolean_shapes_true',
        documentation: 'Serializes boolean shapes (true)',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"Boolean":true}',
        bodyMediaType: 'application/json',
        params: {'Boolean': true},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('serializes_boolean_shapes_false (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_boolean_shapes_false',
        documentation: 'Serializes boolean shapes (false)',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"Boolean":false}',
        bodyMediaType: 'application/json',
        params: {'Boolean': false},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('serializes_timestamp_shapes (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_timestamp_shapes',
        documentation: 'Serializes timestamp shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"Timestamp":946845296}',
        bodyMediaType: 'application/json',
        params: {'Timestamp': 946845296},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test(
    'serializes_timestamp_shapes_with_iso8601_timestampformat (request)',
    () async {
      await _i2.httpRequestTest(
        operation: KitchenSinkOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          credentialsProvider: const _i3.AWSCredentialsProvider(
            _i3.AWSCredentials(
              'DUMMY-ACCESS-KEY-ID',
              'DUMMY-SECRET-ACCESS-KEY',
            ),
          ),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'serializes_timestamp_shapes_with_iso8601_timestampformat',
          documentation:
              'Serializes timestamp shapes with iso8601 timestampFormat',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_1',
          ),
          authScheme: null,
          body: '{"Iso8601Timestamp":"2000-01-02T20:34:56Z"}',
          bodyMediaType: 'application/json',
          params: {'Iso8601Timestamp': 946845296},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.1',
            'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
          },
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          KitchenSinkAwsJson11Serializer(),
          EmptyStructAwsJson11Serializer(),
          SimpleStructAwsJson11Serializer(),
          StructWithJsonNameAwsJson11Serializer(),
        ],
      );
    },
  );
  _i1.test(
    'serializes_timestamp_shapes_with_httpdate_timestampformat (request)',
    () async {
      await _i2.httpRequestTest(
        operation: KitchenSinkOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          credentialsProvider: const _i3.AWSCredentialsProvider(
            _i3.AWSCredentials(
              'DUMMY-ACCESS-KEY-ID',
              'DUMMY-SECRET-ACCESS-KEY',
            ),
          ),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'serializes_timestamp_shapes_with_httpdate_timestampformat',
          documentation:
              'Serializes timestamp shapes with httpdate timestampFormat',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_1',
          ),
          authScheme: null,
          body: '{"HttpdateTimestamp":"Sun, 02 Jan 2000 20:34:56 GMT"}',
          bodyMediaType: 'application/json',
          params: {'HttpdateTimestamp': 946845296},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.1',
            'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
          },
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          KitchenSinkAwsJson11Serializer(),
          EmptyStructAwsJson11Serializer(),
          SimpleStructAwsJson11Serializer(),
          StructWithJsonNameAwsJson11Serializer(),
        ],
      );
    },
  );
  _i1.test(
    'serializes_timestamp_shapes_with_unixtimestamp_timestampformat (request)',
    () async {
      await _i2.httpRequestTest(
        operation: KitchenSinkOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          credentialsProvider: const _i3.AWSCredentialsProvider(
            _i3.AWSCredentials(
              'DUMMY-ACCESS-KEY-ID',
              'DUMMY-SECRET-ACCESS-KEY',
            ),
          ),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'serializes_timestamp_shapes_with_unixtimestamp_timestampformat',
          documentation:
              'Serializes timestamp shapes with unixTimestamp timestampFormat',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_1',
          ),
          authScheme: null,
          body: '{"UnixTimestamp":946845296}',
          bodyMediaType: 'application/json',
          params: {'UnixTimestamp': 946845296},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.1',
            'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
          },
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          KitchenSinkAwsJson11Serializer(),
          EmptyStructAwsJson11Serializer(),
          SimpleStructAwsJson11Serializer(),
          StructWithJsonNameAwsJson11Serializer(),
        ],
      );
    },
  );
  _i1.test('serializes_list_shapes (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_list_shapes',
        documentation: 'Serializes list shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"ListOfStrings":["abc","mno","xyz"]}',
        bodyMediaType: 'application/json',
        params: {
          'ListOfStrings': ['abc', 'mno', 'xyz'],
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('serializes_empty_list_shapes (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_empty_list_shapes',
        documentation: 'Serializes empty list shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"ListOfStrings":[]}',
        bodyMediaType: 'application/json',
        params: {'ListOfStrings': []},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('serializes_list_of_map_shapes (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_list_of_map_shapes',
        documentation: 'Serializes list of map shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body:
            '{"ListOfMapsOfStrings":[{"foo":"bar"},{"abc":"xyz"},{"red":"blue"}]}',
        bodyMediaType: 'application/json',
        params: {
          'ListOfMapsOfStrings': [
            {'foo': 'bar'},
            {'abc': 'xyz'},
            {'red': 'blue'},
          ],
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('serializes_list_of_structure_shapes (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_list_of_structure_shapes',
        documentation: 'Serializes list of structure shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body:
            '{"ListOfStructs":[{"Value":"abc"},{"Value":"mno"},{"Value":"xyz"}]}',
        bodyMediaType: 'application/json',
        params: {
          'ListOfStructs': [
            {'Value': 'abc'},
            {'Value': 'mno'},
            {'Value': 'xyz'},
          ],
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('serializes_list_of_recursive_structure_shapes (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_list_of_recursive_structure_shapes',
        documentation: 'Serializes list of recursive structure shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body:
            '{"RecursiveList":[{"RecursiveList":[{"RecursiveList":[{"Integer":123}]}]}]}',
        bodyMediaType: 'application/json',
        params: {
          'RecursiveList': [
            {
              'RecursiveList': [
                {
                  'RecursiveList': [
                    {'Integer': 123},
                  ],
                },
              ],
            },
          ],
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('serializes_map_shapes (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_map_shapes',
        documentation: 'Serializes map shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"MapOfStrings":{"abc":"xyz","mno":"hjk"}}',
        bodyMediaType: 'application/json',
        params: {
          'MapOfStrings': {'abc': 'xyz', 'mno': 'hjk'},
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('serializes_empty_map_shapes (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_empty_map_shapes',
        documentation: 'Serializes empty map shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"MapOfStrings":{}}',
        bodyMediaType: 'application/json',
        params: {'MapOfStrings': {}},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('serializes_map_of_list_shapes (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_map_of_list_shapes',
        documentation: 'Serializes map of list shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body:
            '{"MapOfListsOfStrings":{"abc":["abc","xyz"],"mno":["xyz","abc"]}}',
        bodyMediaType: 'application/json',
        params: {
          'MapOfListsOfStrings': {
            'abc': ['abc', 'xyz'],
            'mno': ['xyz', 'abc'],
          },
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('serializes_map_of_structure_shapes (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_map_of_structure_shapes',
        documentation: 'Serializes map of structure shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body:
            '{"MapOfStructs":{"key1":{"Value":"value-1"},"key2":{"Value":"value-2"}}}',
        bodyMediaType: 'application/json',
        params: {
          'MapOfStructs': {
            'key1': {'Value': 'value-1'},
            'key2': {'Value': 'value-2'},
          },
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('serializes_map_of_recursive_structure_shapes (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_map_of_recursive_structure_shapes',
        documentation: 'Serializes map of recursive structure shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body:
            '{"RecursiveMap":{"key1":{"RecursiveMap":{"key2":{"RecursiveMap":{"key3":{"Boolean":false}}}}}}}',
        bodyMediaType: 'application/json',
        params: {
          'RecursiveMap': {
            'key1': {
              'RecursiveMap': {
                'key2': {
                  'RecursiveMap': {
                    'key3': {'Boolean': false},
                  },
                },
              },
            },
          },
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('serializes_structure_shapes (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_structure_shapes',
        documentation: 'Serializes structure shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"SimpleStruct":{"Value":"abc"}}',
        bodyMediaType: 'application/json',
        params: {
          'SimpleStruct': {'Value': 'abc'},
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test(
    'serializes_structure_members_with_locationname_traits (request)',
    () async {
      await _i2.httpRequestTest(
        operation: KitchenSinkOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
          credentialsProvider: const _i3.AWSCredentialsProvider(
            _i3.AWSCredentials(
              'DUMMY-ACCESS-KEY-ID',
              'DUMMY-SECRET-ACCESS-KEY',
            ),
          ),
        ),
        testCase: const _i2.HttpRequestTestCase(
          id: 'serializes_structure_members_with_locationname_traits',
          documentation:
              'Serializes structure members with locationName traits',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsJson1_1',
          ),
          authScheme: null,
          body: '{"StructWithJsonName":{"Value":"some-value"}}',
          bodyMediaType: 'application/json',
          params: {
            'StructWithJsonName': {'Value': 'some-value'},
          },
          vendorParamsShape: null,
          vendorParams: {},
          headers: {
            'Content-Type': 'application/x-amz-json-1.1',
            'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
          },
          forbidHeaders: [],
          requireHeaders: ['Content-Length'],
          tags: [],
          appliesTo: null,
          method: 'POST',
          uri: '/',
          host: null,
          resolvedHost: null,
          queryParams: [],
          forbidQueryParams: [],
          requireQueryParams: [],
        ),
        inputSerializers: const [
          KitchenSinkAwsJson11Serializer(),
          EmptyStructAwsJson11Serializer(),
          SimpleStructAwsJson11Serializer(),
          StructWithJsonNameAwsJson11Serializer(),
        ],
      );
    },
  );
  _i1.test('serializes_empty_structure_shapes (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_empty_structure_shapes',
        documentation: 'Serializes empty structure shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"SimpleStruct":{}}',
        bodyMediaType: 'application/json',
        params: {'SimpleStruct': {}},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('serializes_structure_which_have_no_members (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_structure_which_have_no_members',
        documentation: 'Serializes structure which have no members',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"EmptyStruct":{}}',
        bodyMediaType: 'application/json',
        params: {'EmptyStruct': {}},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('serializes_recursive_structure_shapes (request)', () async {
    await _i2.httpRequestTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'serializes_recursive_structure_shapes',
        documentation: 'Serializes recursive structure shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body:
            '{"String":"top-value","Boolean":false,"RecursiveStruct":{"String":"nested-value","Boolean":true,"RecursiveList":[{"String":"string-only"},{"RecursiveStruct":{"MapOfStrings":{"color":"red","size":"large"}}}]}}',
        bodyMediaType: 'application/json',
        params: {
          'String': 'top-value',
          'Boolean': false,
          'RecursiveStruct': {
            'String': 'nested-value',
            'Boolean': true,
            'RecursiveList': [
              {'String': 'string-only'},
              {
                'RecursiveStruct': {
                  'MapOfStrings': {'color': 'red', 'size': 'large'},
                },
              },
            ],
          },
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'Content-Type': 'application/x-amz-json-1.1',
          'X-Amz-Target': 'JsonProtocol.KitchenSinkOperation',
        },
        forbidHeaders: [],
        requireHeaders: ['Content-Length'],
        tags: [],
        appliesTo: null,
        method: 'POST',
        uri: '/',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_operations_with_empty_json_bodies (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_operations_with_empty_json_bodies',
        documentation: 'Parses operations with empty JSON bodies',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{}',
        bodyMediaType: 'application/json',
        params: {},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_string_shapes (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_string_shapes',
        documentation: 'Parses string shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"String":"string-value"}',
        bodyMediaType: 'application/json',
        params: {'String': 'string-value'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_integer_shapes (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_integer_shapes',
        documentation: 'Parses integer shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"Integer":1234}',
        bodyMediaType: 'application/json',
        params: {'Integer': 1234},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_long_shapes (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_long_shapes',
        documentation: 'Parses long shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"Long":1234567890123456789}',
        bodyMediaType: 'application/json',
        params: {'Long': '1234567890123456789'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  }, testOn: 'vm');
  _i1.test('parses_float_shapes (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_float_shapes',
        documentation: 'Parses float shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"Float":1234.5}',
        bodyMediaType: 'application/json',
        params: {'Float': 1234.5},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_double_shapes (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_double_shapes',
        documentation: 'Parses double shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"Double":123456789.12345679}',
        bodyMediaType: 'application/json',
        params: {'Double': 123456789.12345679},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_boolean_shapes_true (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_boolean_shapes_true',
        documentation: 'Parses boolean shapes (true)',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"Boolean":true}',
        bodyMediaType: 'application/json',
        params: {'Boolean': true},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_boolean_false (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_boolean_false',
        documentation: 'Parses boolean (false)',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"Boolean":false}',
        bodyMediaType: 'application/json',
        params: {'Boolean': false},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_blob_shapes (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_blob_shapes',
        documentation: 'Parses blob shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"Blob":"YmluYXJ5LXZhbHVl"}',
        bodyMediaType: 'application/json',
        params: {'Blob': 'binary-value'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_timestamp_shapes (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_timestamp_shapes',
        documentation: 'Parses timestamp shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"Timestamp":946845296}',
        bodyMediaType: 'application/json',
        params: {'Timestamp': 946845296},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_iso8601_timestamps (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_iso8601_timestamps',
        documentation: 'Parses iso8601 timestamps',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"Iso8601Timestamp":"2000-01-02T20:34:56Z"}',
        bodyMediaType: 'application/json',
        params: {'Iso8601Timestamp': 946845296},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_httpdate_timestamps (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_httpdate_timestamps',
        documentation: 'Parses httpdate timestamps',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"HttpdateTimestamp":"Sun, 02 Jan 2000 20:34:56 GMT"}',
        bodyMediaType: 'application/json',
        params: {'HttpdateTimestamp': 946845296},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_list_shapes (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_list_shapes',
        documentation: 'Parses list shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"ListOfStrings":["abc","mno","xyz"]}',
        bodyMediaType: 'application/json',
        params: {
          'ListOfStrings': ['abc', 'mno', 'xyz'],
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_list_of_map_shapes (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_list_of_map_shapes',
        documentation: 'Parses list of map shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"ListOfMapsOfStrings":[{"size":"large"},{"color":"red"}]}',
        bodyMediaType: 'application/json',
        params: {
          'ListOfMapsOfStrings': [
            {'size': 'large'},
            {'color': 'red'},
          ],
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_list_of_list_shapes (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_list_of_list_shapes',
        documentation: 'Parses list of list shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"ListOfLists":[["abc","mno","xyz"],["hjk","qrs","tuv"]]}',
        bodyMediaType: 'application/json',
        params: {
          'ListOfLists': [
            ['abc', 'mno', 'xyz'],
            ['hjk', 'qrs', 'tuv'],
          ],
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_list_of_structure_shapes (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_list_of_structure_shapes',
        documentation: 'Parses list of structure shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"ListOfStructs":[{"Value":"value-1"},{"Value":"value-2"}]}',
        bodyMediaType: 'application/json',
        params: {
          'ListOfStructs': [
            {'Value': 'value-1'},
            {'Value': 'value-2'},
          ],
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_list_of_recursive_structure_shapes (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_list_of_recursive_structure_shapes',
        documentation: 'Parses list of recursive structure shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body:
            '{"RecursiveList":[{"RecursiveList":[{"RecursiveList":[{"String":"value"}]}]}]}',
        bodyMediaType: 'application/json',
        params: {
          'RecursiveList': [
            {
              'RecursiveList': [
                {
                  'RecursiveList': [
                    {'String': 'value'},
                  ],
                },
              ],
            },
          ],
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_map_shapes (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_map_shapes',
        documentation: 'Parses map shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{"MapOfStrings":{"size":"large","color":"red"}}',
        bodyMediaType: 'application/json',
        params: {
          'MapOfStrings': {'size': 'large', 'color': 'red'},
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_map_of_list_shapes (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_map_of_list_shapes',
        documentation: 'Parses map of list shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body:
            '{"MapOfListsOfStrings":{"sizes":["large","small"],"colors":["red","green"]}}',
        bodyMediaType: 'application/json',
        params: {
          'MapOfListsOfStrings': {
            'sizes': ['large', 'small'],
            'colors': ['red', 'green'],
          },
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_map_of_map_shapes (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_map_of_map_shapes',
        documentation: 'Parses map of map shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body:
            '{"MapOfMaps":{"sizes":{"large":"L","medium":"M"},"colors":{"red":"R","blue":"B"}}}',
        bodyMediaType: 'application/json',
        params: {
          'MapOfMaps': {
            'sizes': {'large': 'L', 'medium': 'M'},
            'colors': {'red': 'R', 'blue': 'B'},
          },
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_map_of_structure_shapes (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_map_of_structure_shapes',
        documentation: 'Parses map of structure shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body:
            '{"MapOfStructs":{"size":{"Value":"small"},"color":{"Value":"red"}}}',
        bodyMediaType: 'application/json',
        params: {
          'MapOfStructs': {
            'size': {'Value': 'small'},
            'color': {'Value': 'red'},
          },
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_map_of_recursive_structure_shapes (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_map_of_recursive_structure_shapes',
        documentation: 'Parses map of recursive structure shapes',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body:
            '{"RecursiveMap":{"key-1":{"RecursiveMap":{"key-2":{"RecursiveMap":{"key-3":{"String":"value"}}}}}}}',
        bodyMediaType: 'application/json',
        params: {
          'RecursiveMap': {
            'key-1': {
              'RecursiveMap': {
                'key-2': {
                  'RecursiveMap': {
                    'key-3': {'String': 'value'},
                  },
                },
              },
            },
          },
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/x-amz-json-1.1'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
  _i1.test('parses_the_request_id_from_the_response (response)', () async {
    await _i2.httpResponseTest(
      operation: KitchenSinkOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
        credentialsProvider: const _i3.AWSCredentialsProvider(
          _i3.AWSCredentials('DUMMY-ACCESS-KEY-ID', 'DUMMY-SECRET-ACCESS-KEY'),
        ),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'parses_the_request_id_from_the_response',
        documentation: 'Parses the request id from the response',
        protocol: _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
        authScheme: null,
        body: '{}',
        bodyMediaType: 'application/json',
        params: {},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'X-Amzn-Requestid': 'amazon-uniq-request-id',
          'Content-Type': 'application/x-amz-json-1.1',
        },
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        KitchenSinkAwsJson11Serializer(),
        EmptyStructAwsJson11Serializer(),
        SimpleStructAwsJson11Serializer(),
        StructWithJsonNameAwsJson11Serializer(),
      ],
    );
  });
}

class KitchenSinkAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<KitchenSink> {
  const KitchenSinkAwsJson11Serializer() : super('KitchenSink');

  @override
  Iterable<Type> get types => const [KitchenSink];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
    _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  KitchenSink deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KitchenSinkBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Blob':
          result.blob =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(_i5.Uint8List),
                  )
                  as _i5.Uint8List);
        case 'Boolean':
          result.boolean =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool);
        case 'Double':
          result.double_ =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(double),
                  )
                  as double);
        case 'EmptyStruct':
          result.emptyStruct.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(EmptyStruct),
                )
                as EmptyStruct),
          );
        case 'Float':
          result.float =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(double),
                  )
                  as double);
        case 'HttpdateTimestamp':
          result.httpdateTimestamp = _i4.TimestampSerializer.epochSeconds
              .deserialize(serializers, value);
        case 'Integer':
          result.integer =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )
                  as int);
        case 'Iso8601Timestamp':
          result.iso8601Timestamp = _i4.TimestampSerializer.epochSeconds
              .deserialize(serializers, value);
        case 'JsonValue':
          result.jsonValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(_i6.JsonObject),
                  )
                  as _i6.JsonObject);
        case 'ListOfLists':
          result.listOfLists.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i7.BuiltList, [
                    FullType(_i7.BuiltList, [FullType(String)]),
                  ]),
                )
                as _i7.BuiltList<_i7.BuiltList<String>>),
          );
        case 'ListOfMapsOfStrings':
          result.listOfMapsOfStrings.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i7.BuiltList, [
                    FullType(_i7.BuiltMap, [
                      FullType(String),
                      FullType(String),
                    ]),
                  ]),
                )
                as _i7.BuiltList<_i7.BuiltMap<String, String>>),
          );
        case 'ListOfStrings':
          result.listOfStrings.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i7.BuiltList, [
                    FullType(String),
                  ]),
                )
                as _i7.BuiltList<String>),
          );
        case 'ListOfStructs':
          result.listOfStructs.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i7.BuiltList, [
                    FullType(SimpleStruct),
                  ]),
                )
                as _i7.BuiltList<SimpleStruct>),
          );
        case 'Long':
          result.long =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(_i8.Int64),
                  )
                  as _i8.Int64);
        case 'MapOfListsOfStrings':
          result.mapOfListsOfStrings.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i7.BuiltListMultimap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i7.BuiltListMultimap<String, String>),
          );
        case 'MapOfMaps':
          result.mapOfMaps.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i7.BuiltMap, [
                    FullType(String),
                    FullType(_i7.BuiltMap, [
                      FullType(String),
                      FullType(String),
                    ]),
                  ]),
                )
                as _i7.BuiltMap<String, _i7.BuiltMap<String, String>>),
          );
        case 'MapOfStrings':
          result.mapOfStrings.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i7.BuiltMap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i7.BuiltMap<String, String>),
          );
        case 'MapOfStructs':
          result.mapOfStructs.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i7.BuiltMap, [
                    FullType(String),
                    FullType(SimpleStruct),
                  ]),
                )
                as _i7.BuiltMap<String, SimpleStruct>),
          );
        case 'RecursiveList':
          result.recursiveList.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i7.BuiltList, [
                    FullType(KitchenSink),
                  ]),
                )
                as _i7.BuiltList<KitchenSink>),
          );
        case 'RecursiveMap':
          result.recursiveMap.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i7.BuiltMap, [
                    FullType(String),
                    FullType(KitchenSink),
                  ]),
                )
                as _i7.BuiltMap<String, KitchenSink>),
          );
        case 'RecursiveStruct':
          result.recursiveStruct.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(KitchenSink),
                )
                as KitchenSink),
          );
        case 'SimpleStruct':
          result.simpleStruct.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(SimpleStruct),
                )
                as SimpleStruct),
          );
        case 'String':
          result.string =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'StructWithJsonName':
          result.structWithJsonName.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(StructWithJsonName),
                )
                as StructWithJsonName),
          );
        case 'Timestamp':
          result.timestamp = _i4.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
        case 'UnixTimestamp':
          result.unixTimestamp = _i4.TimestampSerializer.epochSeconds
              .deserialize(serializers, value);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    KitchenSink object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class EmptyStructAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<EmptyStruct> {
  const EmptyStructAwsJson11Serializer() : super('EmptyStruct');

  @override
  Iterable<Type> get types => const [EmptyStruct];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
    _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  EmptyStruct deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return EmptyStructBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EmptyStruct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class SimpleStructAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<SimpleStruct> {
  const SimpleStructAwsJson11Serializer() : super('SimpleStruct');

  @override
  Iterable<Type> get types => const [SimpleStruct];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
    _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  SimpleStruct deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimpleStructBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Value':
          result.value =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SimpleStruct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class StructWithJsonNameAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<StructWithJsonName> {
  const StructWithJsonNameAwsJson11Serializer() : super('StructWithJsonName');

  @override
  Iterable<Type> get types => const [StructWithJsonName];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
    _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  StructWithJsonName deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StructWithJsonNameBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Value':
          result.value =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StructWithJsonName object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ErrorWithMembersAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<ErrorWithMembers> {
  const ErrorWithMembersAwsJson11Serializer() : super('ErrorWithMembers');

  @override
  Iterable<Type> get types => const [ErrorWithMembers];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
    _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  ErrorWithMembers deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorWithMembersBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Code':
          result.code =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'ComplexData':
          result.complexData.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(KitchenSink),
                )
                as KitchenSink),
          );
        case 'IntegerField':
          result.integerField =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )
                  as int);
        case 'ListField':
          result.listField.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i7.BuiltList, [
                    FullType(String),
                  ]),
                )
                as _i7.BuiltList<String>),
          );
        case 'MapField':
          result.mapField.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i7.BuiltMap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i7.BuiltMap<String, String>),
          );
        case 'Message':
          result.message =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'StringField':
          result.stringField =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ErrorWithMembers object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class ErrorWithoutMembersAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<ErrorWithoutMembers> {
  const ErrorWithoutMembersAwsJson11Serializer() : super('ErrorWithoutMembers');

  @override
  Iterable<Type> get types => const [ErrorWithoutMembers];

  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
    _i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
  ];

  @override
  ErrorWithoutMembers deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ErrorWithoutMembersBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ErrorWithoutMembers object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
