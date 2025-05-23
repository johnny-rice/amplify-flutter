// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
library;

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/model/cognito_user.dart';
import 'package:amplify_auth_cognito_dart/src/state/state/auth_state.dart';
import 'package:meta/meta.dart';

/// Helper for getting an [CognitoAuthUser] from [CognitoUserPoolTokens].
extension UserPoolTokensAuthUser on CredentialStoreData {
  /// The [CognitoAuthUser] represented by these tokens.
  CognitoAuthUser get authUser => CognitoAuthUser(
    userId: CognitoToken(userPoolTokens!.idToken).userId,
    username: CognitoIdToken(userPoolTokens!.idToken).username,
    signInDetails: signInDetails!,
  );
}

/// Helper for getting an [CognitoAuthUser] from a [CognitoUser].
extension CognitoUserAuthUser on CognitoUser {
  /// The [CognitoAuthUser] representing this user.
  CognitoAuthUser get authUser => CognitoAuthUser(
    userId: userId,
    username: username,
    signInDetails: signInDetails,
  );
}
