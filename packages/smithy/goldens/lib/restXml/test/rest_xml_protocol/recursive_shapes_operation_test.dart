// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

// ignore_for_file: unused_element
library rest_xml_v1.rest_xml_protocol.test.recursive_shapes_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/recursive_shapes_input_output.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/recursive_shapes_input_output_nested1.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/recursive_shapes_input_output_nested2.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/operation/recursive_shapes_operation.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test('RecursiveShapes (request)', () async {
    await _i2.httpRequestTest(
      operation: RecursiveShapesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpRequestTestCase(
        id: 'RecursiveShapes',
        documentation: 'Serializes recursive structures',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<RecursiveShapesInputOutput>\n    <nested>\n        <foo>Foo1</foo>\n        <nested>\n            <bar>Bar1</bar>\n            <recursiveMember>\n                <foo>Foo2</foo>\n                <nested>\n                    <bar>Bar2</bar>\n                </nested>\n            </recursiveMember>\n        </nested>\n    </nested>\n</RecursiveShapesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {
          'nested': {
            'foo': 'Foo1',
            'nested': {
              'bar': 'Bar1',
              'recursiveMember': {
                'foo': 'Foo2',
                'nested': {'bar': 'Bar2'},
              },
            },
          },
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        method: 'PUT',
        uri: '/RecursiveShapes',
        host: null,
        resolvedHost: null,
        queryParams: [],
        forbidQueryParams: [],
        requireQueryParams: [],
      ),
      inputSerializers: const [
        RecursiveShapesInputOutputRestXmlSerializer(),
        RecursiveShapesInputOutputNested1RestXmlSerializer(),
        RecursiveShapesInputOutputNested2RestXmlSerializer(),
      ],
    );
  });
  _i1.test('RecursiveShapes (response)', () async {
    await _i2.httpResponseTest(
      operation: RecursiveShapesOperation(
        region: 'us-east-1',
        baseUri: Uri.parse('https://example.com'),
      ),
      testCase: const _i2.HttpResponseTestCase(
        id: 'RecursiveShapes',
        documentation: 'Serializes recursive structures',
        protocol: _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
        authScheme: null,
        body:
            '<RecursiveShapesInputOutput>\n    <nested>\n        <foo>Foo1</foo>\n        <nested>\n            <bar>Bar1</bar>\n            <recursiveMember>\n                <foo>Foo2</foo>\n                <nested>\n                    <bar>Bar2</bar>\n                </nested>\n            </recursiveMember>\n        </nested>\n    </nested>\n</RecursiveShapesInputOutput>\n',
        bodyMediaType: 'application/xml',
        params: {
          'nested': {
            'foo': 'Foo1',
            'nested': {
              'bar': 'Bar1',
              'recursiveMember': {
                'foo': 'Foo2',
                'nested': {'bar': 'Bar2'},
              },
            },
          },
        },
        vendorParamsShape: null,
        vendorParams: {},
        headers: {'Content-Type': 'application/xml'},
        forbidHeaders: [],
        requireHeaders: [],
        tags: [],
        appliesTo: null,
        code: 200,
      ),
      outputSerializers: const [
        RecursiveShapesInputOutputRestXmlSerializer(),
        RecursiveShapesInputOutputNested1RestXmlSerializer(),
        RecursiveShapesInputOutputNested2RestXmlSerializer(),
      ],
    );
  });
}

class RecursiveShapesInputOutputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<RecursiveShapesInputOutput> {
  const RecursiveShapesInputOutputRestXmlSerializer()
    : super('RecursiveShapesInputOutput');

  @override
  Iterable<Type> get types => const [RecursiveShapesInputOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  RecursiveShapesInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecursiveShapesInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nested':
          result.nested.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    RecursiveShapesInputOutputNested1,
                  ),
                )
                as RecursiveShapesInputOutputNested1),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RecursiveShapesInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class RecursiveShapesInputOutputNested1RestXmlSerializer
    extends _i3.StructuredSmithySerializer<RecursiveShapesInputOutputNested1> {
  const RecursiveShapesInputOutputNested1RestXmlSerializer()
    : super('RecursiveShapesInputOutputNested1');

  @override
  Iterable<Type> get types => const [RecursiveShapesInputOutputNested1];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  RecursiveShapesInputOutputNested1 deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecursiveShapesInputOutputNested1Builder();
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
        case 'nested':
          result.nested.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    RecursiveShapesInputOutputNested2,
                  ),
                )
                as RecursiveShapesInputOutputNested2),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RecursiveShapesInputOutputNested1 object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class RecursiveShapesInputOutputNested2RestXmlSerializer
    extends _i3.StructuredSmithySerializer<RecursiveShapesInputOutputNested2> {
  const RecursiveShapesInputOutputNested2RestXmlSerializer()
    : super('RecursiveShapesInputOutputNested2');

  @override
  Iterable<Type> get types => const [RecursiveShapesInputOutputNested2];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
    _i3.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  RecursiveShapesInputOutputNested2 deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecursiveShapesInputOutputNested2Builder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'bar':
          result.bar =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'recursiveMember':
          result.recursiveMember.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                    RecursiveShapesInputOutputNested1,
                  ),
                )
                as RecursiveShapesInputOutputNested1),
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RecursiveShapesInputOutputNested2 object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
