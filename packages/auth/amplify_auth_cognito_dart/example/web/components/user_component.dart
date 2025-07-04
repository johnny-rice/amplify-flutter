// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:cognito_example/common.dart';
import 'package:example_common/example_common.dart';
import 'package:web/web.dart';

import 'app_component.dart';

class UserComponent extends StatefulComponent {
  UserComponent({required this.navigateTo});

  static final logger = AWSLogger().createChild('UserComponent');

  final void Function(AuthState) navigateTo;

  List<List<String>> rows = [];
  bool _showSession = false;

  Future<void> _fetchAuthSession() async {
    final session = await fetchAuthSession();
    final devices = <AuthDevice>[];
    try {
      devices.addAll(await fetchDevices());
    } on InvalidUserPoolConfigurationException {
      // device tracking may not be enabled.
    }
    setState(() {
      _showSession = true;
      rows = [
        ['userSub', session.userSubResult.value],
        ['accessToken', session.userPoolTokensResult.value.accessToken.raw],
        ['idToken', session.userPoolTokensResult.value.idToken.raw],
        ['refreshToken', session.userPoolTokensResult.value.refreshToken],
        [
          'credential session',
          session.credentialsResult.value.sessionToken ?? 'null',
        ],
        ...devices
            .map((device) => device.asCognitoDevice)
            .map(
              (device) => [
                'Device: ${device.id}',
                device.attributes.toString(),
              ],
            ),
      ];
    });
  }

  void _hideSession() {
    setState(() => _showSession = false);
  }

  @override
  Component render() {
    return ColumnComponent(
      alignItems: AlignItems.center,
      children: [
        TextComponent('You are logged in!'),
        ButtonComponent(innerHtml: 'Remember Device', onClick: rememberDevice),
        ButtonComponent(innerHtml: 'Forget Device', onClick: forgetDevice),
        ButtonComponent(
          innerHtml: 'Manage Attributes',
          onClick: () => navigateTo(AuthState.manageAttributes),
        ),
        if (!_showSession)
          ButtonComponent(
            innerHtml: 'Fetch Session',
            onClick: _fetchAuthSession,
          ),
        if (_showSession) ...[
          ButtonComponent(innerHtml: 'Hide Session', onClick: _hideSession),
          TableComponent(
            tableDefinition: TableDefinition(
              headers: ['Key', 'Value'],
              rows: rows,
            ),
          ),
        ],
        ButtonComponent(
          innerHtml: 'Change Password',
          onClick: () => navigateTo(AuthState.changePassword),
        ),
        ButtonComponent(
          id: 'signOut',
          innerHtml: 'Sign Out',
          onClick: () async {
            try {
              final result = await signOut(globalSignOut: false);
              logger.debug('Sign out result: $result');
            } on AuthException catch (e, st) {
              logger.error('Error signing out', e, st);
            } on Object catch (e, st) {
              logger.error('Error signing out', e, st);
              rethrow;
            } finally {
              navigateTo(AuthState.login);
            }
          },
        ),
        ButtonComponent(
          innerHtml: 'Sign Out (Global)',
          onClick: () async {
            try {
              await signOut(globalSignOut: true);
            } finally {
              navigateTo(AuthState.login);
            }
          },
        ),
        ButtonComponent(
          innerHtml: 'Delete User',
          onClick: () async {
            if (window.confirm('Are you sure you want to delete the user?')) {
              try {
                await deleteUser();
              } finally {
                navigateTo(AuthState.login);
              }
            }
          },
        ),
      ],
    );
  }
}
