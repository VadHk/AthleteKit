import 'package:flutter/material.dart';

enum AppLanguage {
  en(Locale('en', 'US')),
  ua(Locale('ua', 'UA'));

  const AppLanguage(this.value);
  final Locale value;
}
