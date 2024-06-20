

part of '../base_localization.dart';

abstract class ThemeLocalization{
  String get theme;
  set theme(String value);

  String get light;
  set light(String value);

  String get dark;
  set dark(String value);

  String get system;
  set system(String value);
}