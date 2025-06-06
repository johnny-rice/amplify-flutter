// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';
import 'utils/test_utils.dart';

void main() {
  testRunner.setupTests();

  group('sign-in-sms-totp-mfa', () {
    testRunner.withEnvironment(mfaRequiredEmailSms, (env) {
      // Scenario: Sign in using a totp code when both SMS and EMAIL are enabled
      // Note: When email and sms are both enabled,
      // one of them must be selected as preferred.
      // This is different from other mfa methods and
      // is expected behavior from cognito
      testWidgets('can select EMAIL MFA', (tester) async {
        final username = env.generateUsername();
        final password = generatePassword();
        final phoneNumber = generateUSPhoneNumber();

        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          verifyAttributes: false,
          attributes: {
            AuthUserAttributeKey.phoneNumber: phoneNumber.toE164(),
            AuthUserAttributeKey.email: username,
          },
        );

        await loadAuthenticator(tester: tester);

        expect(
          tester.bloc.stream,
          emitsInOrder([
            UnauthenticatedState.signIn,
            isA<ContinueSignInWithMfaSelection>(),
            UnauthenticatedState.confirmSignInMfa,
            isA<AuthenticatedState>(),
            UnauthenticatedState.signIn,
            UnauthenticatedState.confirmSignInWithOtpCode,
            isA<AuthenticatedState>(),
            emitsDone,
          ]),
        );

        final signInPage = SignInPage(tester: tester);
        final confirmSignInPage = ConfirmSignInPage(tester: tester);

        final smsResult = await getOtpCode(
          UserAttribute.phone(phoneNumber.toE164()),
        );
        // When I type my "username"
        await signInPage.enterUsername(username);

        // And I type my password
        await signInPage.enterPassword(password);

        // And I click the "Sign in" button
        await signInPage.submitSignIn();

        // Then I will be redirected to chose MFA type
        await confirmSignInPage.expectConfirmSignInMfaSelectionIsPresent();

        // When I select "SMS"
        await confirmSignInPage.selectMfaMethod(mfaMethod: MfaType.sms);

        // And I click the "Confirm" button
        await confirmSignInPage.submitConfirmSignInMfaSelection();

        // Then I will be redirected to the confirm sms mfa page
        await confirmSignInPage.expectConfirmSignInMFAIsPresent();

        // When I type a valid confirmation code
        await confirmSignInPage.enterVerificationCode(await smsResult.code);

        // And I click the "Confirm" button
        await confirmSignInPage.submitConfirmSignIn();

        // Then I see the authenticated app
        await signInPage.expectAuthenticated();

        // When I enable EMAIL for MFA instead of the default set up by cognito (SMS)
        await setUpEmailMfa();

        // And I sign out using Auth.signOut()
        await Amplify.Auth.signOut();
        await tester.pumpAndSettle();

        final code_2 = await getOtpCode(env.getLoginAttribute(username));

        // Then I see the sign in page
        signInPage.expectEmail();

        // When I type my "username"
        await signInPage.enterUsername(username);

        // And I type my password
        await signInPage.enterPassword(password);

        // And I click the "Sign in" button
        await signInPage.submitSignIn();

        // Then I will be redirected to the EMAIL MFA code page
        await confirmSignInPage.expectConfirmSignInWithOtpCodeIsPresent();

        // When I type a valid EMAIL MFA code
        await confirmSignInPage.enterVerificationCode(await code_2.code);

        // And I click the "Confirm" button
        await confirmSignInPage.submitConfirmSignIn();

        // Then I see the authenticated app
        await signInPage.expectAuthenticated();

        await tester.bloc.close();
      });
    });
  });
}
