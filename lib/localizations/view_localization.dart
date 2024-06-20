
part of '../base_localization.dart';

abstract class ViewLocalization{

  //page
  String get page;
  set page(String value);

  // pages
  String get pages;
  set pages(String value);

  //view
  String get view;
  set view(String value);



  // Home page
  String get homePageTitle;
  set homePageTitle(String value);

  // contact us
  String get contactUs;
  set contactUs(String value);

  // about us
  String get aboutUs;
  set aboutUs(String value);

  // privacy policy
  String get privacyPolicy;
  set privacyPolicy(String value);

  // terms and conditions
  String get termsAndConditions;
  set termsAndConditions(String value);

  // profile
  String get profile;
  set profile(String value);

  // products
  String get products;
  set products(String value);

  // services
  String get services;
  set services(String value);

  // images
  String get images;
  set images(String value);

  // videos
  String get videos;
  set videos(String value);

  // information
  String get information;
  set information(String value);

  // this view is not support
  String get notSupport;
  set notSupport(String value);

  // this view is not support description
  String get notSupportDescription;
  set notSupportDescription(String value);

}