import 'package:athletekit/data/args/enums.dart';
import 'package:athletekit/data/interfaces/settings_interface.dart';
import 'package:flutter/material.dart';

class Settings implements SettingsInterface {
  static final Settings _settings = Settings._internal();

  @override
  late Brightness theme;
  @override
  late AppLanguage lang;

  factory Settings() => _settings;

  Settings._internal() {
    theme = Brightness.dark;
    lang = AppLanguage.en;
  }

  @override
  void switchTheme(Brightness theme) {
    this.theme = theme;
  }

  @override
  void switchLang(AppLanguage lang) {
    this.lang = lang;
  }
}
