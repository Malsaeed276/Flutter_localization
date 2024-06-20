
import 'dart:ui';

import 'package:flutter/cupertino.dart';

part 'localizations/auth_localization.dart';
part 'localizations/error_localization.dart';
part 'localizations/theme_localization.dart';
part 'localizations/internet_localization.dart';
part 'localizations/actions_localization.dart';
part 'localizations/search_localization.dart';
part 'localizations/settings_localization.dart';
part 'localizations/view_localization.dart';


abstract class BaseLocalization {

  String get languageCode;
  String get languageName;

  // General app strings
  String appName(String appName);

  // is valid characters for the language
  bool isValidCharacters(String value);

  // is valid numbers for the language
  bool isValidNumbers(String value);


  ViewLocalization? get pagesLocalization;
  set pagesLocalization(ViewLocalization? value);

  //lang direction
  TextDirection get textDirection;

  SettingsLocalization? get settingsLocalization;
  set settingsLocalization(SettingsLocalization? value);

  ActionsLocalization? get actionsLocalization;
  set actionsLocalization(ActionsLocalization? value);

  SearchLocalization? get searchLocalization;
  set searchLocalization(SearchLocalization? value);

  InternetLocalization? get internetLocalization;
  set internetLocalization(InternetLocalization? value);

  // Nested localization classes for different sections
  ThemeLocalization? get themeLocalization;
  set themeLocalization(ThemeLocalization? value);

  AuthLocalization? get auth;
  set auth(AuthLocalization? value);

  ErrorLocalization? get errorLocalization;
  set errorLocalization(ErrorLocalization? value);
}








