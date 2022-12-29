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

  /// `Home`
  String get main_tab_home {
    return Intl.message(
      'Home',
      name: 'main_tab_home',
      desc: '',
      args: [],
    );
  }

  /// `Player`
  String get main_tab_items {
    return Intl.message(
      'Player',
      name: 'main_tab_items',
      desc: '',
      args: [],
    );
  }

  /// `Favorite`
  String get main_tab_collections {
    return Intl.message(
      'Favorite',
      name: 'main_tab_collections',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get main_tab_transactions {
    return Intl.message(
      'Profile',
      name: 'main_tab_transactions',
      desc: '',
      args: [],
    );
  }

  /// `Policy`
  String get main_tab_policy {
    return Intl.message(
      'Policy',
      name: 'main_tab_policy',
      desc: '',
      args: [],
    );
  }

  /// `Scan`
  String get scan {
    return Intl.message(
      'Scan',
      name: 'scan',
      desc: '',
      args: [],
    );
  }

  /// `Upload`
  String get upload {
    return Intl.message(
      'Upload',
      name: 'upload',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Back  `
  String get back {
    return Intl.message(
      'Back  ',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get get_started_action {
    return Intl.message(
      'Get Started',
      name: 'get_started_action',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continue_action {
    return Intl.message(
      'Continue',
      name: 'continue_action',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok_action {
    return Intl.message(
      'OK',
      name: 'ok_action',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Options`
  String get options {
    return Intl.message(
      'Options',
      name: 'options',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get remove {
    return Intl.message(
      'Remove',
      name: 'remove',
      desc: '',
      args: [],
    );
  }

  /// `Collection`
  String get collection {
    return Intl.message(
      'Collection',
      name: 'collection',
      desc: '',
      args: [],
    );
  }

  /// `No results found`
  String get no_result {
    return Intl.message(
      'No results found',
      name: 'no_result',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get common_action_cancel {
    return Intl.message(
      'Cancel',
      name: 'common_action_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong, please try again!`
  String get error_generic {
    return Intl.message(
      'Something went wrong, please try again!',
      name: 'error_generic',
      desc: '',
      args: [],
    );
  }

  /// `Processing, please wait...`
  String get common_loading_message {
    return Intl.message(
      'Processing, please wait...',
      name: 'common_loading_message',
      desc: '',
      args: [],
    );
  }

  /// `Your Email`
  String get register_email {
    return Intl.message(
      'Your Email',
      name: 'register_email',
      desc: '',
      args: [],
    );
  }

  /// `Your Name`
  String get register_name {
    return Intl.message(
      'Your Name',
      name: 'register_name',
      desc: '',
      args: [],
    );
  }

  /// `Your Password`
  String get register_password {
    return Intl.message(
      'Your Password',
      name: 'register_password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get register_confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'register_confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `login`
  String get login {
    return Intl.message(
      'login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get sign_up {
    return Intl.message(
      'Sign up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Recommend for you`
  String get trending_right_now {
    return Intl.message(
      'Recommend for you',
      name: 'trending_right_now',
      desc: '',
      args: [],
    );
  }

  /// `Recent listen`
  String get recent_listen {
    return Intl.message(
      'Recent listen',
      name: 'recent_listen',
      desc: '',
      args: [],
    );
  }

  /// `Top artist`
  String get top_artist {
    return Intl.message(
      'Top artist',
      name: 'top_artist',
      desc: '',
      args: [],
    );
  }

  /// `Discover`
  String get discover {
    return Intl.message(
      'Discover',
      name: 'discover',
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
