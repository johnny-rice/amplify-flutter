// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: invalid_use_of_protected_member

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart'
    hide InternalErrorException;
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_test/common/matchers.dart';
import 'package:amplify_auth_cognito_test/common/mock_clients.dart';
import 'package:amplify_auth_cognito_test/common/mock_config.dart';
import 'package:amplify_auth_cognito_test/common/mock_secure_storage.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:test/test.dart';

void main() {
  final userPoolKeys = CognitoUserPoolKeys(mockConfig.auth!.userPoolClientId!);
  final identityPoolKeys = CognitoIdentityPoolKeys(
    mockConfig.auth!.identityPoolId!,
  );

  late AmplifyAuthCognitoDart plugin;
  late CognitoAuthStateMachine stateMachine;
  late MockSecureStorage secureStorage;

  late StreamController<AuthHubEvent> hubEventsController;
  late Stream<AuthHubEvent> hubEvents;

  final testAuthRepo = AmplifyAuthProviderRepository();

  final userDeletedEvent = isA<AuthHubEvent>().having(
    (event) => event.type,
    'type',
    AuthHubEventType.userDeleted,
  );

  group('AmplifyAuthCognitoDart', () {
    setUp(() async {
      secureStorage = MockSecureStorage();
      SecureStorageInterface storageFactory(scope) => secureStorage;

      stateMachine = CognitoAuthStateMachine()..addInstance(secureStorage);

      plugin = AmplifyAuthCognitoDart(secureStorageFactory: storageFactory)
        ..stateMachine = stateMachine;

      hubEventsController = StreamController();
      hubEvents = hubEventsController.stream;
      Amplify.Hub.listen(HubChannel.Auth, hubEventsController.add);
    });

    tearDown(() async {
      Amplify.Hub.close();
      await Amplify.reset();
    });

    group('deleteUser', () {
      test('throws when signed out', () async {
        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        expect(hubEvents, neverEmits(userDeletedEvent));
        await expectLater(plugin.deleteUser(), throwsSignedOutException);

        unawaited(hubEventsController.close());
      });

      test('clears credential store when signed in & HTTP succeeds', () async {
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
        );
        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        final mockIdp = MockCognitoIdentityProviderClient(
          deleteUser: () async {},
        );
        stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

        await expectLater(plugin.stateMachine.getUserPoolTokens(), completes);
        await expectLater(plugin.deleteUser(), completes);
        expect(
          plugin.stateMachine.getUserPoolTokens(),
          throwsSignedOutException,
        );
        expect(hubEvents, emitsThrough(userDeletedEvent));
      });

      test('does not clear credentials when signed in & HTTP fails', () async {
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
        );
        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        final mockIdp = MockCognitoIdentityProviderClient(
          deleteUser: () async {
            throw InternalErrorException();
          },
        );
        stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

        await expectLater(plugin.stateMachine.getUserPoolTokens(), completes);
        await expectLater(plugin.deleteUser(), throwsA(isA<Exception>()));
        expect(plugin.stateMachine.getUserPoolTokens(), completes);
        expect(hubEvents, neverEmits(userDeletedEvent));
        unawaited(hubEventsController.close());
      });
    });
  });
}
