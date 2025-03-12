// GENERATED CODE - DO NOT MODIFY BY HAND
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
    final name =
        (locale.countryCode?.isEmpty ?? false)
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
