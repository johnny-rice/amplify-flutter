// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_authenticator/src/l10n/generated/title_localizations_en.dart'
    deferred as title_localizations_en;
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

/// Callers can lookup localized strings with an instance of AuthenticatorTitleLocalizations
/// returned by `AuthenticatorTitleLocalizations.of(context)`.
///
/// Applications need to include `AuthenticatorTitleLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/title_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AuthenticatorTitleLocalizations.localizationsDelegates,
///   supportedLocales: AuthenticatorTitleLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AuthenticatorTitleLocalizations.supportedLocales
/// property.
abstract class AuthenticatorTitleLocalizations {
  AuthenticatorTitleLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale);

  final String localeName;

  static AuthenticatorTitleLocalizations? of(BuildContext context) {
    return Localizations.of<AuthenticatorTitleLocalizations>(
      context,
      AuthenticatorTitleLocalizations,
    );
  }

  static const LocalizationsDelegate<AuthenticatorTitleLocalizations> delegate =
      _AuthenticatorTitleLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// Title of the Confirm Sign Up step and form
  ///
  /// In en, this message translates to:
  /// **'Enter your confirmation code'**
  String get confirmSignUp;

  /// Title of the Confirm Sign In with MFA step and form
  ///
  /// In en, this message translates to:
  /// **'Enter your sign in code'**
  String get confirmSignInMfa;

  /// Title of the Confirm Sign In with Custom Auth step and form
  ///
  /// In en, this message translates to:
  /// **'Enter your sign in code'**
  String get confirmSignInCustomAuth;

  /// Title of the Confirm Sign In with New Password step and form
  ///
  /// In en, this message translates to:
  /// **'Change your password to sign in'**
  String get confirmSignInNewPassword;

  /// Title of the SignIn with MFA selection step and form
  ///
  /// In en, this message translates to:
  /// **'Select your preferred Two-Factor Auth method'**
  String get continueSignInWithMfaSelection;

  /// Title of the SignIn with TOTP setup step and form
  ///
  /// In en, this message translates to:
  /// **'Enable Two-Factor Auth'**
  String get continueSignInWithTotpSetup;

  /// Title of the Confirm Sign In with Totp MFA Code step and form
  ///
  /// In en, this message translates to:
  /// **'Enter your one-time passcode'**
  String get confirmSignInWithTotpMfaCode;

  /// Title of the Confirm Sign In with Email MFA Code step and form
  ///
  /// In en, this message translates to:
  /// **'Enter your one-time passcode'**
  String get confirmSignInWithOtpCode;

  /// Title of the Continue Sign In with Email MFA Setup step and form
  ///
  /// In en, this message translates to:
  /// **'Add Email for Two-Factor Authentication'**
  String get continueSignInWithEmailMfaSetup;

  /// Title of the Continue Sign In with MFA Setup Selection step and form
  ///
  /// In en, this message translates to:
  /// **'Choose your preferred two-factor authentication method to set up'**
  String get continueSignInWithMfaSetupSelection;

  /// Title of the Reset Password step and form
  ///
  /// In en, this message translates to:
  /// **'Send Code'**
  String get resetPassword;

  /// Title of the Confirm Reset Password step and form
  ///
  /// In en, this message translates to:
  /// **'Reset your password'**
  String get confirmResetPassword;

  /// Title of the Verify and Confirm Verify User s and forms
  ///
  /// In en, this message translates to:
  /// **'Account recovery requires verified contact information'**
  String get verifyUser;
}

class _AuthenticatorTitleLocalizationsDelegate
    extends LocalizationsDelegate<AuthenticatorTitleLocalizations> {
  const _AuthenticatorTitleLocalizationsDelegate();

  @override
  Future<AuthenticatorTitleLocalizations> load(Locale locale) {
    return lookupAuthenticatorTitleLocalizations(locale);
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AuthenticatorTitleLocalizationsDelegate old) => false;
}

Future<AuthenticatorTitleLocalizations> lookupAuthenticatorTitleLocalizations(
  Locale locale,
) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return title_localizations_en.loadLibrary().then(
        (dynamic _) =>
            title_localizations_en.AuthenticatorTitleLocalizationsEn(),
      );
  }

  throw FlutterError(
    'AuthenticatorTitleLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
