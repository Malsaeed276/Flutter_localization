library localization;

import 'package:flutter/material.dart';
import 'package:localization/base_localization.dart';

import 'view/language_dialog.dart';



class LocalizationController with ChangeNotifier {

  List<BaseLocalization> languages;
  late BaseLocalization _language;

  BaseLocalization get language => _language;

  set language(BaseLocalization value) {
    addLanguage(value);
    notifyListeners();
    _language = value;
  }

  updateCurrentLanguage(String code){
    language = getLanguageByCode(code);
  }

  LocalizationController({required this.languages}){
    _language = languages.first;
  }
  /// set the languages that app will support
  /// give the mame of the app




  // add new language
  void addLanguage(BaseLocalization localization) {
    if (languages.contains(localization)) {
      return;
    }else{
      languages.add(localization);
    }
  }
  // get the language direction
  TextDirection getLangDirection() {
    return language.textDirection;
  }

  // get the language code
  Map<String,String> getLanguagesCode() {
    //map of the languages code, name of the language from each language in the languages list
    Map<String,String> languagesCode = {};
    for (var element in languages) {
      languagesCode[element.languageCode] = element.languageName;
    }

    return languagesCode;
  }

  BaseLocalization getLanguageByCode(String code){
    for (var element in languages) {
      if(element.languageCode == code){
        return element;
      }
    }
    return languages.first;
  }

  // language Dialog
  void getLanguageDialog(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) => const LanguageDialog(),
    );
  }

  // is the language is the current language
  bool isCurrentLanguage(String code) {
    return language.languageCode == code;
  }
}



