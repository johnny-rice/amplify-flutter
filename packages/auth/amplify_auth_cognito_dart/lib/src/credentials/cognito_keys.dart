// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
library;

import 'dart:collection';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart'
    show AuthFlowType;
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito_dart.cognito_user_pool_key}
/// Discrete keys stored for Cognito User Pool operations in secure storage.
/// {@endtemplate}
enum CognitoUserPoolKey {
  /// The access token, serialized as a JWT.
  accessToken,

  /// The refresh token.
  refreshToken,

  /// The ID token, serialized as a JWT.
  idToken,

  /// The username passed to `signIn`.
  ///
  /// Since Cognito can obscure this value when signing in with email/phone
  /// alias enabled, this value is recorded at the time of sign in to allow
  /// developers access to the precise username used.
  username,

  /// The [AuthFlowType] passed to `signIn`.
  authFlowType,

  /// The advanced security feature (ASF) device identifier.
  asfDeviceId,
}

/// Discrete keys stored for Cognito User Pool device tracking operations in
/// secure storage.
enum CognitoDeviceKey {
  /// The device key.
  deviceKey,

  /// The device group key.
  deviceGroupKey,

  /// The device password.
  devicePassword,

  /// The status of the device (i.e. tracked or remembered)
  deviceStatus,
}

/// Discrete keys stored for Cognito Identity Pool operations in secure storage.
enum CognitoIdentityPoolKey {
  /// AWS Access Key ID
  accessKeyId,

  /// AWS Secret Access Key
  secretAccessKey,

  /// AWS Session Token
  sessionToken,

  /// AWS Credentials Expiration, encoded using ISO 8601.
  expiration,

  /// AWS Identity ID.
  identityId,

  /// Third-party [AuthProvider] (only used in federation).
  provider,

  /// Third-party OIDC token (only used in federation).
  idToken,
}

/// Discrete keys stored for Hosted UI operations in secure storage.
enum HostedUiKey {
  /// The access token, serialized as a JWT.
  accessToken,

  /// The refresh token.
  refreshToken,

  /// The ID token, serialized as a JWT.
  idToken,

  /// The OAuth state string.
  state,

  /// The OAuth code verifier.
  codeVerifier,

  /// The [CognitoSignInWithWebUIPluginOptions] passed to `signInWithWebUI`.
  options,

  /// The [AuthProvider] passed to `signInWithWebUI`.
  provider,
}

/// {@template amplify_auth_cognito.cognito_identity_pool_keys}
/// Enumerates and iterates over the keys stored in secure storage by
/// Cognito Identity Pool operations.
/// {@endtemplate}
final class CognitoIdentityPoolKeys
    extends CognitoKeys<CognitoIdentityPoolKey> {
  /// {@macro amplify_auth_cognito.cognito_identity_pool_keys}
  const CognitoIdentityPoolKeys(this.identityPoolId);

  /// The Cognito identity pool Id, used to determine the key prefixes.
  final String identityPoolId;

  @override
  List<CognitoIdentityPoolKey> get _values => CognitoIdentityPoolKey.values;

  @override
  String get prefix => identityPoolId;
}

/// {@template amplify_auth_cognito.cognito_user_pool_keys}
/// Enumerates and iterates over the keys stored in secure storage by
/// Cognito User Pool operations.
/// {@endtemplate}
final class CognitoUserPoolKeys extends CognitoKeys<CognitoUserPoolKey> {
  /// {@macro amplify_auth_cognito.cognito_user_pool_keys}
  const CognitoUserPoolKeys(this.userPoolClientId);

  /// The Cognito user pool client Id, used to determine the key prefixes.
  final String userPoolClientId;

  @override
  List<CognitoUserPoolKey> get _values => CognitoUserPoolKey.values;

  @override
  String get prefix => userPoolClientId;
}

/// {@template amplify_auth_cognito.cognito_user_pool_keys}
/// Enumerates and iterates over the keys stored in secure storage by
/// Cognito User Pool device tracking operations.
/// {@endtemplate}
final class CognitoDeviceKeys extends CognitoKeys<CognitoDeviceKey> {
  /// {@macro amplify_auth_cognito.cognito_user_pool_keys}
  const CognitoDeviceKeys(this.userPoolClientId, this.username);

  /// The Cognito user pool client Id, used to determine the key prefixes.
  final String userPoolClientId;

  /// Device keys are tracked by username.
  final String username;

  @override
  List<CognitoDeviceKey> get _values => CognitoDeviceKey.values;

  @override
  String get prefix => '$userPoolClientId.$username';
}

/// {@template amplify_auth_cognito.hosted_ui_keys}
/// Enumerates and iterates over the keys stored in secure storage by
/// Cognito Hosted UI operations.
/// {@endtemplate}
final class HostedUiKeys extends CognitoKeys<HostedUiKey> {
  /// {@macro amplify_auth_cognito.hosted_ui_keys}
  const HostedUiKeys(this.userPoolClientId);

  /// The Cognito user pool client Id, used to determine the key prefixes.
  final String userPoolClientId;

  @override
  List<HostedUiKey> get _values => HostedUiKey.values;

  @override
  String get prefix => '$userPoolClientId.hostedUi';
}

/// {@template amplify_auth_cognito.cognito_keys}
/// Iterable secure storage keys.
/// {@endtemplate}
abstract base class CognitoKeys<Key extends Enum> extends IterableBase<String> {
  /// {@macro amplify_auth_cognito.cognito_keys}
  const CognitoKeys();

  /// Enum values of the key type.
  List<Key> get _values;

  /// The prefix to use for keys.
  String get prefix;

  /// Retrieves the storage identifier for [key].
  String operator [](Key key) => '$prefix.${key.name}';

  @override
  Iterator<String> get iterator => _CognitoKeysIterator(this);
}

final class _CognitoKeysIterator<Key extends Enum> implements Iterator<String> {
  _CognitoKeysIterator(this._keys);

  final CognitoKeys<Key> _keys;

  /// Current index of iteration.
  int _currentIndex = -1;

  @override
  String get current {
    if (_currentIndex < 0) {
      throw StateError('Must call moveNext first');
    }
    final currentKey = _keys._values[_currentIndex];
    return _keys[currentKey];
  }

  @override
  bool moveNext() => ++_currentIndex < _keys._values.length;
}
