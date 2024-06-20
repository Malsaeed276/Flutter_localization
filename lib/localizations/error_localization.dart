
part of '../base_localization.dart';

abstract class ErrorLocalization {
  String get errorOccurred;
  set errorOccurred(String value);

  String get errorOccurredMessage;
  set errorOccurredMessage(String value);

  String errorNotValid(String field);

  String get error;
  set error(String value);

  String pleaseCheckYour(String field);

  String theFieldAlreadyExist(String field);

  String pleaseEnterValid(String field);

  // something went wrong
  String get somethingWentWrong;
  set somethingWentWrong(String value);

  // try again
  String get tryAgain;
  set tryAgain(String value);

  // error happened while processing your request
  String get errorHappenedWhileProcessingYourRequest;
  set errorHappenedWhileProcessingYourRequest(String value);


}