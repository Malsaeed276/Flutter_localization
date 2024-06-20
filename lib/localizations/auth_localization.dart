
part of '../base_localization.dart';

abstract class AuthLocalization {



  String get login;
  set login(String value);

  String get loginMessage;
  set loginMessage(String value);

  String get register;
  set register(String value);

  String get registerMessage;
  set registerMessage(String value);


  String get alreadyExistMessage;
  set alreadyExistMessage(String value);

  String get wrongPasswordMessage;
  set wrongPasswordMessage(String value);

  // please check your email
  String get pleaseCheckYourEmail;
  set pleaseCheckYourEmail(String value);

  // please enter your email
  String get pleaseEnterYourEmail;
  set pleaseEnterYourEmail(String value);

  // please enter valid email
  String get pleaseEnterValidEmail;
  set pleaseEnterValidEmail(String value);

  // email already exist
  String get emailAlreadyExist;
  set emailAlreadyExist(String value);

  // email not valid
  String get emailNotValid;
  set emailNotValid(String value);

  // phone number
  String get phoneNumber;
  set phoneNumber(String value);

  // please enter your phone number
  String get pleaseEnterYourPhoneNumber;
  set pleaseEnterYourPhoneNumber(String value);

  // please enter valid phone number
  String get pleaseEnterValidPhoneNumber;
  set pleaseEnterValidPhoneNumber(String value);

  // phone number already exist
  String get phoneNumberAlreadyExist;
  set phoneNumberAlreadyExist(String value);

  // phone number not valid
  String get phoneNumberNotValid;
  set phoneNumberNotValid(String value);

  // please make sure your phone number is correct way
  String get pleaseMakeSureYourPhoneNumberIsCorrectWay;
  set pleaseMakeSureYourPhoneNumberIsCorrectWay(String value);

  String get logout;
  set logout(String value);

  String get logoutMessage;
  set logoutMessage(String value);

  String get email;
  set email(String value);

  String get userName;
  set userName(String value);

  String get password;
  set password(String value);

  String get pleaseEnterYourPassword;
  set pleaseEnterYourPassword(String value);

  String get passwordLengthError;
  set passwordLengthError(String value);

  String get passwordNotValid;
  set passwordNotValid(String value);

  String get registerText;
  set registerText(String value);

  String get loginText;
  set loginText(String value);

  String get userNotFound;
  set userNotFound(String value);

  // do you have an account
  String get doYouHaveAnAccount;
  set doYouHaveAnAccount(String value);

  // already have an account
  String get alreadyHaveAnAccount;
  set alreadyHaveAnAccount(String value);

  // don't have an account
  String get dontHaveAnAccount;
  set dontHaveAnAccount(String value);

  // create account
  String get createAccount;
  set createAccount(String value);

  // forgot password
  String get forgotPassword;
  set forgotPassword(String value);

}