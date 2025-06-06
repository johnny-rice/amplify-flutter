// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:typed_data';

import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';

/// Serializer for the [Uint8List] (Blob) type.
class BlobSerializer extends PrimitiveSmithySerializer<Uint8List> {
  const BlobSerializer([this.mediaType = 'application/octet-stream'])
    : super('Blob');

  final String mediaType;

  @override
  Iterable<Type> get types => [
    Uint8List,
    Uint8List(0).runtimeType,
    List<int>,
    List<dynamic>,
  ];

  @override
  Uint8List deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (serialized is Uint8List) {
      return serialized;
    } else if (serialized is List) {
      return Uint8List.fromList(serialized.cast());
    }
    serialized as String;
    return switch (mediaType) {
      'text/plain' ||
      'application/octet-stream' => Uint8List.fromList(utf8.encode(serialized)),
      _ => base64Decode(serialized),
    };
  }

  @override
  Object serialize(
    Serializers serializers,
    Uint8List object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return switch (mediaType) {
      'text/plain' => utf8.decode(object),
      'application/octet-stream' => object,
      _ => base64Encode(object),
    };
  }
}
