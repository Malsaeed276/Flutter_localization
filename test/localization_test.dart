import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:localization/base_localization.dart';
import 'package:localization/languages/language_localization.dart';
import 'package:localization/localization.dart';


void main() {
  group('LocalizationController', () {
    late LocalizationController controller;

    setUp(() {
      controller = LocalizationController(languages: [
        EnglishLocalization(appNameText: 'Test App',)
      ]);
    });

    test('addLanguage adds a new language', () {
      var newLanguage = ArabicLocalization(appNameText: 'اختبار التطبيق');
      controller.addLanguage(newLanguage);
      expect(controller.languages.contains(newLanguage), true);
    });

    test('getLangDirection returns the correct text direction', () {
      expect(controller.getLangDirection(), TextDirection.ltr);
    });

    test('getLanguagesCode returns the correct language codes', () {
      var codes = controller.getLanguagesCode();
      expect(codes, containsPair('en', 'English'));
    });

    test('getLanguageByCode returns the correct language', () {
      var language = controller.getLanguageByCode('en');
      expect(language, isA<EnglishLocalization>());
    });

    test('isCurrentLanguage returns true for the current language', () {
      expect(controller.isCurrentLanguage('en'), true);
    });

    // update something in the language and check if it's updated
    test('setAppLang updates the language', () {
      controller.updateCurrentLanguage('en');
      var language = controller.language;
      language.settingsLocalization?.settings = 'Settingsss';
      expect(controller.language.settingsLocalization?.settings, 'Settingsss');

    });

    /// add a new error message language and check if it's added
    test('Add a new variable to the language', () {
      controller.updateCurrentLanguage('en');
      var language = controller.language;
      controller.getLanguageByCode("en").errorLocalization;


      controller.language.settingsLocalization?.newVariable = 'Neww Error Message';
      print(controller.language.settingsLocalization?.newVariable);
      expect(controller.language.settingsLocalization?.newVariable, 'Neww Error Message');

    });

  });
}

// for adding a new variable to the language
extension ExtendedSettingsLocalization on SettingsLocalization {
  static final Map<SettingsLocalization, String> _newVariableMap = {};

  String get newVariable => _newVariableMap[this] ?? 'Default Value';
  set newVariable(String value) => _newVariableMap[this] = value;
}