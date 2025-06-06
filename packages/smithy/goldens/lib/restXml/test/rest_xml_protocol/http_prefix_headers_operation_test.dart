// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.http_prefix_headers_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/http_prefix_headers_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/http_prefix_headers_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('HttpPrefixHeadersArePresent (request)', () async {
    await _i2.httpRequestTest(
      operation: HttpPrefixHeadersOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'HttpPrefixHeadersArePresent',
        documentation: 'Adds headers by prefix',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {
          'foo': 'Foo',
          'fooMap': {'Abc': 'Abc value', 'Def': 'Def value'},
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'X-Foo': 'Foo',
          'X-Foo-Abc': 'Abc value',
          'X-Foo-Def': 'Def value',
        },
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'GET',
        uri: '/HttpPrefixHeaders',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [HttpPrefixHeadersInputOutputRestXmlSerializer()],
    );
  });
  _i1.test('HttpPrefixHeadersAreNotPresent (request)', () async {
    await _i2.httpRequestTest(
      operation: HttpPrefixHeadersOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'HttpPrefixHeadersAreNotPresent',
        documentation:
            'No prefix headers are serialized because the value is empty',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {'foo': 'Foo', 'fooMap': {}},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'X-Foo': 'Foo'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        method: 'GET',
        uri: '/HttpPrefixHeaders',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [HttpPrefixHeadersInputOutputRestXmlSerializer()],
    );
  });
  _i1.test('HttpPrefixHeadersArePresent (response)', () async {
    await _i2.httpResponseTest(
      operation: HttpPrefixHeadersOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'HttpPrefixHeadersArePresent',
        documentation: 'Adds headers by prefix',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {
          'foo': 'Foo',
          'fooMap': {'Abc': 'Abc value', 'Def': 'Def value'},
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {
          'X-Foo': 'Foo',
          'X-Foo-Abc': 'Abc value',
          'X-Foo-Def': 'Def value',
        },
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        HttpPrefixHeadersInputOutputRestXmlSerializer(),
      ],
    );
  });
  _i1.test('HttpPrefixHeadersAreNotPresent (response)', () async {
    await _i2.httpResponseTest(
      operation: HttpPrefixHeadersOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'HttpPrefixHeadersAreNotPresent',
        documentation:
            'No prefix headers are serialized because the value is empty',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {'foo': 'Foo', 'fooMap': {}},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'X-Foo': 'Foo'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        HttpPrefixHeadersInputOutputRestXmlSerializer(),
      ],
    );
  });
}

class HttpPrefixHeadersInputOutputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<HttpPrefixHeadersInputOutput> {
  const HttpPrefixHeadersInputOutputRestXmlSerializer()
    : super('HttpPrefixHeadersInputOutput');

  @override
  Iterable<Type> get types => const [HttpPrefixHeadersInputOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  HttpPrefixHeadersInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HttpPrefixHeadersInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'foo':
          result.foo =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'fooMap':
          result.fooMap.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i4.BuiltMap, [
                    FullType(String),
                    FullType(String),
                  ]),
                )
                as _i4.BuiltMap<String, String>),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    HttpPrefixHeadersInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
