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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Settings`
  String get fromSettingsAppbar {
    return Intl.message(
      'Settings',
      name: 'fromSettingsAppbar',
      desc: '',
      args: [],
    );
  }

  /// `Change Account`
  String get fromSettingsChange {
    return Intl.message(
      'Change Account',
      name: 'fromSettingsChange',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get fromSettingsLan {
    return Intl.message(
      'Language',
      name: 'fromSettingsLan',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get fromContactAppbar {
    return Intl.message(
      'Contact Us',
      name: 'fromContactAppbar',
      desc: '',
      args: [],
    );
  }

  /// `Visit our Facebook page`
  String get fromContactVisitF {
    return Intl.message(
      'Visit our Facebook page',
      name: 'fromContactVisitF',
      desc: '',
      args: [],
    );
  }

  /// `Email Us`
  String get fromContactVisitE {
    return Intl.message(
      'Email Us',
      name: 'fromContactVisitE',
      desc: '',
      args: [],
    );
  }

  /// `phone number`
  String get fromContactPhone {
    return Intl.message(
      'phone number',
      name: 'fromContactPhone',
      desc: '',
      args: [],
    );
  }

  /// `home page`
  String get fromDrawerMain {
    return Intl.message(
      'home page',
      name: 'fromDrawerMain',
      desc: '',
      args: [],
    );
  }

  /// `my cart`
  String get fromDrawerCart {
    return Intl.message(
      'my cart',
      name: 'fromDrawerCart',
      desc: '',
      args: [],
    );
  }

  /// `contact us`
  String get fromDrawerContact {
    return Intl.message(
      'contact us',
      name: 'fromDrawerContact',
      desc: '',
      args: [],
    );
  }

  /// `settings`
  String get fromDrawerSettings {
    return Intl.message(
      'settings',
      name: 'fromDrawerSettings',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get fromDrawerLogOut {
    return Intl.message(
      'Log Out',
      name: 'fromDrawerLogOut',
      desc: '',
      args: [],
    );
  }

  /// `Log In or Sign Up`
  String get fromLogAppbar {
    return Intl.message(
      'Log In or Sign Up',
      name: 'fromLogAppbar',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get fromLogUser {
    return Intl.message(
      'Username',
      name: 'fromLogUser',
      desc: '',
      args: [],
    );
  }

  /// `Enter your username`
  String get fromLogUserE {
    return Intl.message(
      'Enter your username',
      name: 'fromLogUserE',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get fromLogPass {
    return Intl.message(
      'Password',
      name: 'fromLogPass',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get fromLogPassE {
    return Intl.message(
      'Enter your password',
      name: 'fromLogPassE',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get fromLogButton {
    return Intl.message(
      'Log In',
      name: 'fromLogButton',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?   `
  String get fromLogProblem {
    return Intl.message(
      'Don\'t have an account?   ',
      name: 'fromLogProblem',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get fromLogSign {
    return Intl.message(
      'Sign up',
      name: 'fromLogSign',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get fromSignAppbar {
    return Intl.message(
      'Sign Up',
      name: 'fromSignAppbar',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get fromSignUser {
    return Intl.message(
      'Username',
      name: 'fromSignUser',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get fromSignNameE {
    return Intl.message(
      'Enter your name',
      name: 'fromSignNameE',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get fromSignEmail {
    return Intl.message(
      'Email',
      name: 'fromSignEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get fromSignEmailE {
    return Intl.message(
      'Enter your email',
      name: 'fromSignEmailE',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get fromSignPassword {
    return Intl.message(
      'Password',
      name: 'fromSignPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get fromSignPasswordE {
    return Intl.message(
      'Enter your password',
      name: 'fromSignPasswordE',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get fromSignPasswordC {
    return Intl.message(
      'Confirm Password',
      name: 'fromSignPasswordC',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get fromSignButton {
    return Intl.message(
      'Sign Up',
      name: 'fromSignButton',
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
