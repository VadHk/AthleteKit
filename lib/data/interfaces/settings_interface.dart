import 'package:athletekit/data/enums/enums.dart';

abstract class SettingsInterface {
  late AppTheme theme;
  late AppLanguage lang;

  void switchTheme(AppTheme theme);
  void switchLang(AppLanguage lang);
}
