// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to`
  String get OnBoardItem1Title {
    return Intl.message(
      'Welcome to',
      name: 'OnBoardItem1Title',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy Shopping with FruitHUB. Explore Wide Variety of Fresh Fruits and get the best offers with high quality`
  String get OnBoardItem1SubTitle {
    return Intl.message(
      'Enjoy Shopping with FruitHUB. Explore Wide Variety of Fresh Fruits and get the best offers with high quality',
      name: 'OnBoardItem1SubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Search and Shopping`
  String get OnBoardItem2Title {
    return Intl.message(
      'Search and Shopping',
      name: 'OnBoardItem2Title',
      desc: '',
      args: [],
    );
  }

  /// `We Provide you best carfully choosing fruits. Look on Details,Images and Evaluations to ensure from best choice`
  String get OnBoardItem2SubTitle {
    return Intl.message(
      'We Provide you best carfully choosing fruits. Look on Details,Images and Evaluations to ensure from best choice',
      name: 'OnBoardItem2SubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Start Now`
  String get OnBoardStartButton {
    return Intl.message(
      'Start Now',
      name: 'OnBoardStartButton',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get OnBoardNextStep {
    return Intl.message('Skip', name: 'OnBoardNextStep', desc: '', args: []);
  }

  /// `Login`
  String get LoginViewTitle {
    return Intl.message('Login', name: 'LoginViewTitle', desc: '', args: []);
  }

  /// `Email Address`
  String get AuthEmailAddressHint {
    return Intl.message(
      'Email Address',
      name: 'AuthEmailAddressHint',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get AuthFullNameHint {
    return Intl.message(
      'Full Name',
      name: 'AuthFullNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get AuthPasswordHint {
    return Intl.message(
      'Password',
      name: 'AuthPasswordHint',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password?`
  String get AuthForgetPassword {
    return Intl.message(
      'Forget Password?',
      name: 'AuthForgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don't Have an Account?`
  String get AuthDontHaveAccount {
    return Intl.message(
      'Don\'t Have an Account?',
      name: 'AuthDontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Register Now`
  String get AuthRegisterNow {
    return Intl.message(
      'Register Now',
      name: 'AuthRegisterNow',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get Or {
    return Intl.message('OR', name: 'Or', desc: '', args: []);
  }

  /// `Login With {provider}`
  String LoginWithProvider(Object provider) {
    return Intl.message(
      'Login With $provider',
      name: 'LoginWithProvider',
      desc: '',
      args: [provider],
    );
  }

  /// `Register`
  String get RegisterViewTitle {
    return Intl.message(
      'Register',
      name: 'RegisterViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you agree to our `
  String get RegisterViewTermsAndConditionsLabel {
    return Intl.message(
      'By creating an account, you agree to our ',
      name: 'RegisterViewTermsAndConditionsLabel',
      desc: '',
      args: [],
    );
  }

  /// `terms and conditions.`
  String get RegisterViewTermsAndConditions {
    return Intl.message(
      'terms and conditions.',
      name: 'RegisterViewTermsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get CreateNewAccount {
    return Intl.message(
      'Create Account',
      name: 'CreateNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Have an Account?`
  String get AuthHaveAccount {
    return Intl.message(
      'Have an Account?',
      name: 'AuthHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get Google {
    return Intl.message('Google', name: 'Google', desc: '', args: []);
  }

  /// `Apple`
  String get Apple {
    return Intl.message('Apple', name: 'Apple', desc: '', args: []);
  }

  /// `Facebook`
  String get Facebook {
    return Intl.message('Facebook', name: 'Facebook', desc: '', args: []);
  }

  /// `The password provided is too weak.`
  String get FireBaseWeakPassword {
    return Intl.message(
      'The password provided is too weak.',
      name: 'FireBaseWeakPassword',
      desc: '',
      args: [],
    );
  }

  /// `The account already exists for that email.`
  String get FireBaseEmailAlreadyInUse {
    return Intl.message(
      'The account already exists for that email.',
      name: 'FireBaseEmailAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `The email address is malformed or invalid.`
  String get FireBaseInvalidEmail {
    return Intl.message(
      'The email address is malformed or invalid.',
      name: 'FireBaseInvalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `The requested authentication operation (e.g., email/password sign-in) is not enabled in the Firebase Console.`
  String get FireBaseOperationNotAllowed {
    return Intl.message(
      'The requested authentication operation (e.g., email/password sign-in) is not enabled in the Firebase Console.',
      name: 'FireBaseOperationNotAllowed',
      desc: '',
      args: [],
    );
  }

  /// `Too many requests were made to the server. This is often due to repeated failed login attempts.`
  String get FireBaseTooManyRequests {
    return Intl.message(
      'Too many requests were made to the server. This is often due to repeated failed login attempts.',
      name: 'FireBaseTooManyRequests',
      desc: '',
      args: [],
    );
  }

  /// `An account already exists with the same email but different sign-in credentials.`
  String get FireBaseAccountExistWithDifferntCredential {
    return Intl.message(
      'An account already exists with the same email but different sign-in credentials.',
      name: 'FireBaseAccountExistWithDifferntCredential',
      desc: '',
      args: [],
    );
  }

  /// `The credential is already associated with a different user account.`
  String get FireBaseCredentialAlreadyInUse {
    return Intl.message(
      'The credential is already associated with a different user account.',
      name: 'FireBaseCredentialAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `The operation requires a recent login.`
  String get FireBaseRequiresRecentLogin {
    return Intl.message(
      'The operation requires a recent login.',
      name: 'FireBaseRequiresRecentLogin',
      desc: '',
      args: [],
    );
  }

  /// ` The SMS verification code is invalid.`
  String get FireBaseInvalidVerificationCode {
    return Intl.message(
      ' The SMS verification code is invalid.',
      name: 'FireBaseInvalidVerificationCode',
      desc: '',
      args: [],
    );
  }

  /// ` The verification ID used for phone authentication is invalid.`
  String get FireBaseInvalidVerificationID {
    return Intl.message(
      ' The verification ID used for phone authentication is invalid.',
      name: 'FireBaseInvalidVerificationID',
      desc: '',
      args: [],
    );
  }

  /// `The SMS code has expired.`
  String get FireBaseSessionExpired {
    return Intl.message(
      'The SMS code has expired.',
      name: 'FireBaseSessionExpired',
      desc: '',
      args: [],
    );
  }

  /// `The credential is malformed or has expired.`
  String get FireBaseInvalidCredential {
    return Intl.message(
      'The credential is malformed or has expired.',
      name: 'FireBaseInvalidCredential',
      desc: '',
      args: [],
    );
  }

  /// `The credential does not match the current user.`
  String get FireBaseUserMisMatch {
    return Intl.message(
      'The credential does not match the current user.',
      name: 'FireBaseUserMisMatch',
      desc: '',
      args: [],
    );
  }

  /// `A network error occurred (e.g., no internet connection).`
  String get FireBaseNetworkRequestFailed {
    return Intl.message(
      'A network error occurred (e.g., no internet connection).',
      name: 'FireBaseNetworkRequestFailed',
      desc: '',
      args: [],
    );
  }

  /// `An internal error occurred in the Firebase Authentication server.`
  String get FireBaseEnternalError {
    return Intl.message(
      'An internal error occurred in the Firebase Authentication server.',
      name: 'FireBaseEnternalError',
      desc: '',
      args: [],
    );
  }

  /// `The app is not authorized to use Firebase Authentication.`
  String get FireBaseAppNotAuthorized {
    return Intl.message(
      'The app is not authorized to use Firebase Authentication.',
      name: 'FireBaseAppNotAuthorized',
      desc: '',
      args: [],
    );
  }

  /// `The user’s account has been disabled by an administrator.`
  String get FireBaseUserDisabled {
    return Intl.message(
      'The user’s account has been disabled by an administrator.',
      name: 'FireBaseUserDisabled',
      desc: '',
      args: [],
    );
  }

  /// `The action code (e.g., password reset code) has expired.`
  String get FireBaseExpiredActionCode {
    return Intl.message(
      'The action code (e.g., password reset code) has expired.',
      name: 'FireBaseExpiredActionCode',
      desc: '',
      args: [],
    );
  }

  /// `The action code is invalid.`
  String get FireBaseInvalidActionCode {
    return Intl.message(
      'The action code is invalid.',
      name: 'FireBaseInvalidActionCode',
      desc: '',
      args: [],
    );
  }

  /// `The verification code is missing.`
  String get FireBaseMissingVerificationCode {
    return Intl.message(
      'The verification code is missing.',
      name: 'FireBaseMissingVerificationCode',
      desc: '',
      args: [],
    );
  }

  /// `The quota for the operation has been exceeded (e.g., too many SMS messages sent).`
  String get FireBaseQuotaExceeded {
    return Intl.message(
      'The quota for the operation has been exceeded (e.g., too many SMS messages sent).',
      name: 'FireBaseQuotaExceeded',
      desc: '',
      args: [],
    );
  }

  /// `User Not Found`
  String get FireBaseUserNotFound {
    return Intl.message(
      'User Not Found',
      name: 'FireBaseUserNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Wrong Password`
  String get FireBaseWrongPassword {
    return Intl.message(
      'Wrong Password',
      name: 'FireBaseWrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `There is an error, please try later.`
  String get FireBaseUnknownError {
    return Intl.message(
      'There is an error, please try later.',
      name: 'FireBaseUnknownError',
      desc: '',
      args: [],
    );
  }

  /// `{name} is required.`
  String requiredFiled(Object name) {
    return Intl.message(
      '$name is required.',
      name: 'requiredFiled',
      desc: '',
      args: [name],
    );
  }

  /// `Please accept terms and conditions.`
  String get RegisterViewPleaseAcceptTermsAndConditions {
    return Intl.message(
      'Please accept terms and conditions.',
      name: 'RegisterViewPleaseAcceptTermsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `Create User Successfully`
  String get AuthRegisterSuccessSnackBar {
    return Intl.message(
      'Create User Successfully',
      name: 'AuthRegisterSuccessSnackBar',
      desc: '',
      args: [],
    );
  }

  /// `Login Successfully`
  String get AuthLoginSuccessSnackBar {
    return Intl.message(
      'Login Successfully',
      name: 'AuthLoginSuccessSnackBar',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
