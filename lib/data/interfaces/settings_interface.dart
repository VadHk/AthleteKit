import 'package:athletekit/data/args/enums.dart';
import 'package:flutter/material.dart';

abstract class SettingsInterface {
  late Brightness theme;
  late AppLanguage lang;

  void switchTheme(Brightness theme);
  void switchLang(AppLanguage lang);
}
