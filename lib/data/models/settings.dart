import 'package:athletekit/data/enums/enums.dart';
import 'package:athletekit/data/interfaces/settings_interface.dart';

class Settings implements SettingsInterface {
  static final Settings _settings = Settings._internal();

  @override
  late AppTheme theme;
  @override
  late AppLanguage lang;

  factory Settings() => _settings;

  Settings._internal() {
    theme = AppTheme.dark;
    lang = AppLanguage.en;
  }

  @override
  void switchTheme(AppTheme theme) {
    this.theme = theme;
  }

  @override
  void switchLang(AppLanguage lang) {
    this.lang = lang;
  }
}
