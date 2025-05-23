// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_auth_cognito_dart/src/jwt/src/claims.dart';
import 'package:amplify_auth_cognito_dart/src/jwt/src/header.dart';
import 'package:amplify_auth_cognito_dart/src/jwt/src/util.dart';
import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito.json_web_token}
/// A JSON Web Token (JWT) is a compact, URL-safe means of representing claims
/// to be transferred between two parties.
///
/// The claims in a JWT are encoded as a JSON object that is used as the payload
/// of a JSON Web Signature (JWS) structure or as the plaintext of a JSON Web
/// Encryption (JWE) structure, enabling the claims to be digitally signed or
/// integrity protected with a Message Authentication Code (MAC) and/or
/// encrypted.
/// {@endtemplate}
@immutable
class JsonWebToken with AWSEquatable<JsonWebToken>, AWSSerializable {
  /// {@macro amplify_auth_cognito.json_web_token}
  const JsonWebToken({
    String? raw,
    required this.header,
    required this.claims,
    required this.signature,
  }) : _raw = raw;

  /// Parses a JSON Web Token.
  ///
  /// {@macro amplify_auth_cognito.json_web_token}
  factory JsonWebToken.parse(String token) {
    final parts = token.split('.');
    if (parts.length != 3) {
      throw const FormatException('Invalid token');
    }

    final header = decodeBase64(parts[0]);
    final claims = decodeBase64(parts[1]);

    return JsonWebToken(
      raw: token,
      header: JsonWebHeader.fromJson(header),
      claims: JsonWebClaims.fromJson(claims),
      signature: base64RawUrl.decode(parts[2]),
    );
  }

  /// Parses a JSON Web Token, returning `null` if unsuccessful.
  ///
  /// {@macro amplify_auth_cognito.json_web_token}
  static JsonWebToken? tryParse(String token) {
    try {
      return JsonWebToken.parse(token);
    } on FormatException {
      return null;
    }
  }

  final String? _raw;

  /// The raw, encoded JWT string.
  String get raw => _raw ?? encode();

  /// The JOSE (JSON Object Signing and Encryption) header.
  final JsonWebHeader header;

  /// The payload, or set of claims, embodied by this JWT.
  final JsonWebClaims claims;

  /// The signature bytes for this token.
  final List<int> signature;

  @override
  List<Object?> get props => [raw, header, claims, signature];

  @override
  String toJson() => raw;

  @override
  String toString() => prettyPrintJson({
    'header': header.toJson(),
    'claims': claims.toJson(),
    'signature': base64Encode(signature),
  });

  /// Encodes the JWT to a `.`-delimited string.
  String encode() =>
      '${header.encodeBase64()}.'
      '${claims.encodeBase64()}.'
      '${base64RawUrl.encode(signature)}';
}
