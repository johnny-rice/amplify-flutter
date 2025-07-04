// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform.dart';
import 'package:amplify_auth_cognito_dart/src/model/hosted_ui/oauth_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/state/event/auth_event.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@macro amplify_auth_cognito.hosted_ui_platform}
class HostedUiPlatformImpl extends HostedUiPlatform {
  /// {@macro amplify_auth_cognito.hosted_ui_platform}
  HostedUiPlatformImpl(super.dependencyManager) : super.protected();

  static String _html(String pageTitle, String title, String message) =>
      '''
<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>$pageTitle</title>
      <style>
          html,
          body {
              background-color: #f8f8f8;
              color: #1d1d1d;
              font-family:
                  -apple-system,
                  BlinkMacSystemFont,
                  "Segoe UI",
                  Roboto,
                  Oxygen,
                  Ubuntu,
                  Cantarell,
                  "Fira Sans",
                  "Droid Sans",
                  "Helvetica Neue",
                  sans-serif;
          }
          /* Material style card with outline and minimal elevation */
          .card {
              background-color: white;
              margin-top: 64px;
              padding: 64px;
              border: 1px solid #dddddd;
              border-radius: 4px;
              width: 500px;
              box-shadow: 0 1px 0 rgb(0 0 0 / 25%);
          }
      </style>
  </head>
  <body>
      <center>
          <div class="card">
              <h1>$title</h1>
              <p>$message</p>
          </div>
      </center>
  </body>
</html>''';

  static String _htmlForParams(
    Map<String, String> parameters, {
    required bool signIn,
  }) {
    if (parameters.containsKey('error')) {
      return _html(
        'Authentication Error',
        'Something went wrong.',
        'An error occurred. Please return to the application for more info.',
      );
    }
    final title = signIn ? 'Signed In' : 'Signed Out';
    final inOut = signIn ? 'in' : 'out';
    return _html(
      title,
      'You are signed $inOut.',
      'You have successfully signed $inOut. You can now close this window.',
    );
  }

  Never _noSuitableRedirect({required bool signIn}) {
    final inOut = signIn ? 'in' : 'out';
    throw InvalidUserPoolConfigurationException(
      'No sign $inOut redirect URLs registered for localhost. '
      'Add one or more sign $inOut redirect URLs that '
      'start with "http://localhost:" followed by a random port greater '
      'than 1024, for example: "http://localhost:3084/". See the docs for '
      'more info: '
      'https://docs.amplify.aws/lib/auth/signin_web_ui/q/platform/flutter/',
    );
  }

  @override
  Uri get signInRedirectUri => authOutputs.oauth!.redirectSignInUri
      .map(Uri.parse)
      .firstWhere(
        (uri) =>
            uri.scheme == 'http' &&
            (uri.host == 'localhost' || uri.host == '127.0.0.1'),
        orElse: () => _noSuitableRedirect(signIn: true),
      );

  @override
  Uri get signOutRedirectUri => authOutputs.oauth!.redirectSignOutUri
      .map(Uri.parse)
      .firstWhere(
        (uri) =>
            uri.scheme == 'http' &&
            (uri.host == 'localhost' || uri.host == '127.0.0.1'),
        orElse: () => _noSuitableRedirect(signIn: false),
      );

  /// The server being listened on for incoming authorization codes.
  LocalServer? _localServer;

  /// Launches the given URL.
  Future<void> launchUrl(String url) async {
    final String command;
    if (Platform.isWindows) {
      command = 'powershell';
    } else if (Platform.isLinux) {
      command = 'xdg-open';
    } else if (Platform.isMacOS) {
      command = 'open';
    } else {
      throw UnsupportedError('Unsupported OS: ${Platform.operatingSystem}');
    }

    final arguments = Platform.isWindows ? ['start-process', '"$url"'] : [url];
    final couldNotLaunch = '"$command ${arguments.join(' ')}" command failed';
    try {
      final res = await Process.run(
        command,
        arguments,
        stdoutEncoding: utf8,
        stderrEncoding: utf8,
      );
      if (res.exitCode != 0) {
        throw UrlLauncherException(
          couldNotLaunch,
          underlyingException: '${res.stdout}\n${res.stderr}',
        );
      }
    } on Exception catch (e) {
      throw UrlLauncherException(couldNotLaunch, underlyingException: e);
    }
  }

  /// Connect to a local port by trying all the registered [uris], since some
  /// of the ports may be blocked.
  @visibleForTesting
  Future<LocalServer> localConnect(Iterable<Uri> uris) async {
    if (_localServer case final localServer?) {
      return localServer;
    }

    HttpServer? server;
    late Uri selectedUri;
    for (final uri in uris) {
      try {
        server = await HttpServer.bind(InternetAddress.loopbackIPv4, uri.port);
        selectedUri = uri;
        break;
      } on Exception {
        continue;
      }
    }
    if (server == null) {
      throw UrlLauncherException(
        'Could not bind to the registered localhost ports',
        underlyingException:
            'All ports were blocked: [${uris.map((uri) => uri.port).join(',')}]',
      );
    }
    return _localServer = LocalServer(server, selectedUri);
  }

  Future<void> _respond(
    HttpRequest request,
    int statusCode,
    String response, {
    Map<String, String>? headers,
  }) async {
    request.response.statusCode = statusCode;
    headers?.forEach(request.response.headers.add);
    request.response.writeln(response);
    await request.response.flush();
    await request.response.close();
  }

  @override
  Future<void> signIn({
    required CognitoSignInWithWebUIPluginOptions options,
    AuthProvider? provider,
  }) async {
    final signInUris = authOutputs.oauth!.redirectSignInUri
        .map(Uri.parse)
        .where(
          (uri) =>
              uri.scheme == 'http' &&
              (uri.host == 'localhost' || uri.host == '127.0.0.1'),
        );
    if (signInUris.isEmpty) {
      _noSuitableRedirect(signIn: true);
    }

    final localServer = await localConnect(signInUris);
    try {
      final signInUrl = (await getSignInUri(
        provider: provider,
        redirectUri: localServer.uri,
      )).toString();
      await launchUrl(signInUrl);

      await for (final request in localServer.server) {
        final method = request.method;
        if (method != 'GET') {
          await _respond(
            request,
            HttpStatus.methodNotAllowed,
            'Request must be GET',
          );
          continue;
        }
        if (request.uri.path != signInRedirectUri.path) {
          await _respond(request, HttpStatus.notFound, 'Not found');
          continue;
        }
        final queryParams = request.uri.queryParameters;
        if ((!queryParams.containsKey('code') &&
                !queryParams.containsKey('error')) ||
            !queryParams.containsKey('state')) {
          await _respond(request, HttpStatus.badRequest, 'Missing parameter');
          continue;
        }
        dispatcher
            .dispatch(
              HostedUiEvent.exchange(OAuthParameters.fromJson(queryParams)),
            )
            .ignore();
        await _respond(
          request,
          HttpStatus.ok,
          _htmlForParams(queryParams, signIn: true),
          headers: {AWSHeaders.contentType: 'text/html'},
        );
        break;
      }
    } finally {
      close().ignore();
    }
  }

  @override
  Future<void> cancelSignIn() => close();

  @override
  Future<void> signOut({
    required CognitoSignInWithWebUIPluginOptions options,
  }) async {
    final signOutUris = authOutputs.oauth!.redirectSignOutUri
        .map(Uri.parse)
        .where(
          (uri) =>
              uri.scheme == 'http' &&
              (uri.host == 'localhost' || uri.host == '127.0.0.1'),
        );
    if (signOutUris.isEmpty) {
      _noSuitableRedirect(signIn: false);
    }

    final localServer = await localConnect(signOutUris);
    try {
      final signOutUri = getSignOutUri(redirectUri: localServer.uri).toString();
      await launchUrl(signOutUri);

      await for (final request in localServer.server) {
        final method = request.method;
        if (method != 'GET') {
          await _respond(
            request,
            HttpStatus.methodNotAllowed,
            'Request must be GET',
          );
          continue;
        }
        if (request.uri.path != signOutRedirectUri.path) {
          await _respond(request, HttpStatus.notFound, 'Not found');
          continue;
        }
        final queryParams = request.uri.queryParameters;
        await _respond(
          request,
          HttpStatus.ok,
          _htmlForParams(queryParams, signIn: false),
          headers: {AWSHeaders.contentType: 'text/html'},
        );
        break;
      }
    } finally {
      close().ignore();
    }
  }

  /// Closes the open server, if any.
  @override
  Future<void> close() async {
    final localServer = _localServer;
    _localServer = null;
    await localServer?.server.close();
  }
}

/// {@template amplify_auth_cognito_dart.local_server}
/// A local HTTP server and the port it's listening on.
/// {@endtemplate}
@visibleForTesting
class LocalServer {
  /// {@macro amplify_auth_cognito_dart.local_server}
  LocalServer(this.server, this.uri);

  /// The HTTP server listening on the port defined by [uri].
  final HttpServer server;

  /// The URI selected when starting [server].
  final Uri uri;
}
