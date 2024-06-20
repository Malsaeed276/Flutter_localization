
part of '../base_localization.dart';

abstract class SearchLocalization {
  String get search;
  set search(String value);

  String get searchHint;
  set searchHint(String value);

  String get searchMessage;
  set searchMessage(String value);

  String get searchNotFound;
  set searchNotFound(String value);

  String get searchNotFoundMessage;
  set searchNotFoundMessage(String value);

  String get searchError;
  set searchError(String value);

  String get searchErrorMessage;
  set searchErrorMessage(String value);

  String get searchErrorOccurred;
  set searchErrorOccurred(String value);

  // please enter your search
  String get pleaseEnterYourSearch;
  set pleaseEnterYourSearch(String value);

  // please enter what you want to search
  String get pleaseEnterWhatYouWantToSearch;
  set pleaseEnterWhatYouWantToSearch(String value);

  // please enter valid characters
  String get pleaseEnterValidCharacters;
  set pleaseEnterValidCharacters(String value);


}