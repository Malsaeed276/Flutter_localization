
part of '../base_localization.dart';

abstract class InternetLocalization {
  String get noInternet;
  set noInternet(String value);

  String get noInternetMessage;
  set noInternetMessage(String value);

  // try to connect again
  String get tryAgain;
  set tryAgain(String value);
}