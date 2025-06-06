// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.xml_attributes_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/xml_attributes_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/xml_attributes_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('XmlAttributes (request)', () async {
    await _i2.httpRequestTest(
      operation: XmlAttributesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'XmlAttributes',
        documentation: 'Serializes XML attributes on the synthesized document',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<XmlAttributesInputOutput test="test">\n    <foo>hi</foo>\n</XmlAttributesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'foo': 'hi', 'attr': 'test'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'PUT',
        uri: '/XmlAttributes',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [XmlAttributesInputOutputRestXmlSerializer()],
    );
  });
  _i1.test('XmlAttributesWithEscaping (request)', () async {
    await _i2.httpRequestTest(
      operation: XmlAttributesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'XmlAttributesWithEscaping',
        documentation:
            'Serializes XML attributes with escaped characters on the synthesized document',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<XmlAttributesInputOutput test="&lt;test&amp;mock&gt;">\n    <foo>hi</foo>\n</XmlAttributesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'foo': 'hi', 'attr': '<test&mock>'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'PUT',
        uri: '/XmlAttributes',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [XmlAttributesInputOutputRestXmlSerializer()],
    );
  });
  _i1.test('XmlAttributes (response)', () async {
    await _i2.httpResponseTest(
      operation: XmlAttributesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'XmlAttributes',
        documentation: 'Serializes simple scalar properties',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<XmlAttributesInputOutput test="test">\n    <foo>hi</foo>\n</XmlAttributesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {'foo': 'hi', 'attr': 'test'},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [XmlAttributesInputOutputRestXmlSerializer()],
    );
  });
}

class XmlAttributesInputOutputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<XmlAttributesInputOutput> {
  const XmlAttributesInputOutputRestXmlSerializer()
    : super('XmlAttributesInputOutput');

  @override
  Iterable<Type> get types => const [XmlAttributesInputOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  XmlAttributesInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlAttributesInputOutputBuilder();
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
        case 'attr':
          result.attr =
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
    XmlAttributesInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
