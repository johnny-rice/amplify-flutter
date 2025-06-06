// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:cognito_example/common.dart';
import 'package:example_common/example_common.dart';

class LoginFormComponent extends StatefulComponent {
  LoginFormComponent({required this.onSuccess});

  final void Function(SignInResult) onSuccess;

  String username = '';
  String password = '';

  String? errorText;

  bool isLoading = false;

  Future<void> _login() async {
    setState(() {
      errorText = null;
      isLoading = true;
    });
    if (username.isEmpty || password.isEmpty) {
      setState(() {
        errorText = 'Username and password are required.';
        isLoading = false;
      });
      return;
    }

    try {
      final res = await signIn(username: username, password: password);
      onSuccess(res);
    } on AmplifyException catch (e) {
      setState(() {
        errorText = e.message;
        isLoading = false;
      });
    } on Exception catch (e) {
      setState(() {
        errorText = 'An unknown error occurred: $e';
        isLoading = false;
      });
    }
  }

  @override
  Component render() {
    return ColumnComponent(
      children: [
        if (errorText != null) TextComponent(errorText!),
        FormComponent(
          id: 'loginForm',
          children: [
            TextFormFieldComponent(
              labelText: 'Username',
              initialValue: username,
              onChanged: (value) {
                username = value ?? '';
              },
            ),
            TextFormFieldComponent(
              type: 'password',
              labelText: 'Password',
              initialValue: password,
              onChanged: (value) {
                password = value ?? '';
              },
            ),
            ButtonComponent(
              innerHtml: 'Submit',
              onClick: _login,
              loading: isLoading,
            ),
          ],
        ),
      ],
    );
  }
}
