// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library rest_xml_v2.rest_xml_protocol.test.omits_null_serializes_empty_string_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/omits_null_serializes_empty_string_input.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/operation/omits_null_serializes_empty_string_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('RestXmlOmitsNullQuery (request)', () async {
    await _i2.httpRequestTest(
      operation: OmitsNullSerializesEmptyStringOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'RestXmlOmitsNullQuery',
        documentation: 'Omits null query values',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {'nullValue': null},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: _i2.AppliesTo.client,
        method: 'GET',
        uri: '/OmitsNullSerializesEmptyString',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        OmitsNullSerializesEmptyStringInputRestXmlSerializer(),
      ],
    );
  });
  _i1.test('RestXmlSerializesEmptyString (request)', () async {
    await _i2.httpRequestTest(
      operation: OmitsNullSerializesEmptyStringOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'RestXmlSerializesEmptyString',
        documentation: 'Serializes empty query strings',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body: '',
        bodyMediaType: null,
        params: {'emptyString': ''},
        vendorParamsShape: null,
        vendorParams: {},
        headers: {},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'GET',
        uri: '/OmitsNullSerializesEmptyString',
        host: null,
        resolvedHost: null,
        queryParams: ['Empty='],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        OmitsNullSerializesEmptyStringInputRestXmlSerializer(),
      ],
    );
  });
}

class OmitsNullSerializesEmptyStringInputRestXmlSerializer
    extends
        _i3.StructuredSmithySerializer<OmitsNullSerializesEmptyStringInput> {
  const OmitsNullSerializesEmptyStringInputRestXmlSerializer()
    : super('OmitsNullSerializesEmptyStringInput');

  @override
  Iterable<Type> get types => const [OmitsNullSerializesEmptyStringInput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  OmitsNullSerializesEmptyStringInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OmitsNullSerializesEmptyStringInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nullValue':
          result.nullValue =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'emptyString':
          result.emptyString =
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
    OmitsNullSerializesEmptyStringInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
