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

  /// `Millions of songs.`
  String get millions_of_songs {
    return Intl.message(
      'Millions of songs.',
      name: 'millions_of_songs',
      desc: '',
      args: [],
    );
  }

  /// `Free on Spotify.`
  String get free_on_spotify {
    return Intl.message(
      'Free on Spotify.',
      name: 'free_on_spotify',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `REGISTER`
  String get register {
    return Intl.message(
      'REGISTER',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `LOG IN`
  String get log_in {
    return Intl.message(
      'LOG IN',
      name: 'log_in',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get or {
    return Intl.message(
      'OR',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get already_have_an_account {
    return Intl.message(
      'Already have an account?',
      name: 'already_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get don_t_have_an_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'don_t_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up {
    return Intl.message(
      'Sign Up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Spotify`
  String get spotify {
    return Intl.message(
      'Spotify',
      name: 'spotify',
      desc: '',
      args: [],
    );
  }

  /// `2,768,123 likes 5h 3m`
  String get likes {
    return Intl.message(
      '2,768,123 likes 5h 3m',
      name: 'likes',
      desc: '',
      args: [],
    );
  }

  /// `Recently Played`
  String get recently_played {
    return Intl.message(
      'Recently Played',
      name: 'recently_played',
      desc: '',
      args: [],
    );
  }

  /// `Unkown error`
  String get unkown_error {
    return Intl.message(
      'Unkown error',
      name: 'unkown_error',
      desc: '',
      args: [],
    );
  }

  /// `Good evening`
  String get good_evening {
    return Intl.message(
      'Good evening',
      name: 'good_evening',
      desc: '',
      args: [],
    );
  }

  /// `TOP 50 - Global`
  String get top_global {
    return Intl.message(
      'TOP 50 - Global',
      name: 'top_global',
      desc: '',
      args: [],
    );
  }

  /// `Pop Remix`
  String get pop_remix {
    return Intl.message(
      'Pop Remix',
      name: 'pop_remix',
      desc: '',
      args: [],
    );
  }

  /// `TOP 50 - USA`
  String get top_usa {
    return Intl.message(
      'TOP 50 - USA',
      name: 'top_usa',
      desc: '',
      args: [],
    );
  }

  /// `Workout`
  String get workout {
    return Intl.message(
      'Workout',
      name: 'workout',
      desc: '',
      args: [],
    );
  }

  /// `Best of NF`
  String get best_of_nf {
    return Intl.message(
      'Best of NF',
      name: 'best_of_nf',
      desc: '',
      args: [],
    );
  }

  /// `Beats to Study`
  String get beats_to_study {
    return Intl.message(
      'Beats to Study',
      name: 'beats_to_study',
      desc: '',
      args: [],
    );
  }

  /// `Based on your recent listening`
  String get based_on_your_recent_listening {
    return Intl.message(
      'Based on your recent listening',
      name: 'based_on_your_recent_listening',
      desc: '',
      args: [],
    );
  }

  /// `Best Mode`
  String get best_mode {
    return Intl.message(
      'Best Mode',
      name: 'best_mode',
      desc: '',
      args: [],
    );
  }

  /// `Relax Mode`
  String get relax_mode {
    return Intl.message(
      'Relax Mode',
      name: 'relax_mode',
      desc: '',
      args: [],
    );
  }

  /// `Best Songs - Global`
  String get best_songs_global {
    return Intl.message(
      'Best Songs - Global',
      name: 'best_songs_global',
      desc: '',
      args: [],
    );
  }

  /// `Rap Mode`
  String get rap_mode {
    return Intl.message(
      'Rap Mode',
      name: 'rap_mode',
      desc: '',
      args: [],
    );
  }

  /// `Gaming Mode`
  String get gaming_mode {
    return Intl.message(
      'Gaming Mode',
      name: 'gaming_mode',
      desc: '',
      args: [],
    );
  }

  /// `Recommended radio`
  String get recommended_radio {
    return Intl.message(
      'Recommended radio',
      name: 'recommended_radio',
      desc: '',
      args: [],
    );
  }

  /// `Travis Scott, Taylor Swift, Eminem, Drake, ...`
  String get travis_scott_taylor_swift_eminem_drake {
    return Intl.message(
      'Travis Scott, Taylor Swift, Eminem, Drake, ...',
      name: 'travis_scott_taylor_swift_eminem_drake',
      desc: '',
      args: [],
    );
  }

  /// `Your favorite Music`
  String get your_favorite_music {
    return Intl.message(
      'Your favorite Music',
      name: 'your_favorite_music',
      desc: '',
      args: [],
    );
  }

  /// `Drake`
  String get drake {
    return Intl.message(
      'Drake',
      name: 'drake',
      desc: '',
      args: [],
    );
  }

  /// `Travis Scott`
  String get travis_scott {
    return Intl.message(
      'Travis Scott',
      name: 'travis_scott',
      desc: '',
      args: [],
    );
  }

  /// `NF`
  String get nf {
    return Intl.message(
      'NF',
      name: 'nf',
      desc: '',
      args: [],
    );
  }

  /// `Eminem`
  String get eminem {
    return Intl.message(
      'Eminem',
      name: 'eminem',
      desc: '',
      args: [],
    );
  }

  /// `Artist`
  String get artist {
    return Intl.message(
      'Artist',
      name: 'artist',
      desc: '',
      args: [],
    );
  }

  /// `501`
  String get numberfive {
    return Intl.message(
      '501',
      name: 'numberfive',
      desc: '',
      args: [],
    );
  }

  /// `Music`
  String get music {
    return Intl.message(
      'Music',
      name: 'music',
      desc: '',
      args: [],
    );
  }

  /// `5.1K`
  String get numberfiveone {
    return Intl.message(
      '5.1K',
      name: 'numberfiveone',
      desc: '',
      args: [],
    );
  }

  /// `Followers`
  String get followers {
    return Intl.message(
      'Followers',
      name: 'followers',
      desc: '',
      args: [],
    );
  }

  /// `2.3K`
  String get numbertwo {
    return Intl.message(
      '2.3K',
      name: 'numbertwo',
      desc: '',
      args: [],
    );
  }

  /// `Follow`
  String get follow {
    return Intl.message(
      'Follow',
      name: 'follow',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get edit_profile {
    return Intl.message(
      'Edit Profile',
      name: 'edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `Sign out`
  String get sign_out {
    return Intl.message(
      'Sign out',
      name: 'sign_out',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Social`
  String get social {
    return Intl.message(
      'Social',
      name: 'social',
      desc: '',
      args: [],
    );
  }

  /// `Content settings`
  String get content_settings {
    return Intl.message(
      'Content settings',
      name: 'content_settings',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Privacy policy`
  String get privacy_policy {
    return Intl.message(
      'Privacy policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
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

  /// `Your Library`
  String get your_library {
    return Intl.message(
      'Your Library',
      name: 'your_library',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Find your music`
  String get find_your_music {
    return Intl.message(
      'Find your music',
      name: 'find_your_music',
      desc: '',
      args: [],
    );
  }

  /// `Pop music`
  String get pop_music {
    return Intl.message(
      'Pop music',
      name: 'pop_music',
      desc: '',
      args: [],
    );
  }

  /// `Rock`
  String get rock {
    return Intl.message(
      'Rock',
      name: 'rock',
      desc: '',
      args: [],
    );
  }

  /// `Rap`
  String get rap {
    return Intl.message(
      'Rap',
      name: 'rap',
      desc: '',
      args: [],
    );
  }

  /// `Jazz`
  String get jazz {
    return Intl.message(
      'Jazz',
      name: 'jazz',
      desc: '',
      args: [],
    );
  }

  /// `Reggae`
  String get reggae {
    return Intl.message(
      'Reggae',
      name: 'reggae',
      desc: '',
      args: [],
    );
  }

  /// `House`
  String get house {
    return Intl.message(
      'House',
      name: 'house',
      desc: '',
      args: [],
    );
  }

  /// `Change E-mail`
  String get change_email {
    return Intl.message(
      'Change E-mail',
      name: 'change_email',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get change_password {
    return Intl.message(
      'Change Password',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get email_settings {
    return Intl.message(
      'E-mail',
      name: 'email_settings',
      desc: '',
      args: [],
    );
  }

  /// `New E-mail`
  String get new_email {
    return Intl.message(
      'New E-mail',
      name: 'new_email',
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

  /// `Email has been changed`
  String get email_has_been_changed {
    return Intl.message(
      'Email has been changed',
      name: 'email_has_been_changed',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred while changing the email address`
  String get an_error_occurred_while_changing_the_email_address {
    return Intl.message(
      'An error occurred while changing the email address',
      name: 'an_error_occurred_while_changing_the_email_address',
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
