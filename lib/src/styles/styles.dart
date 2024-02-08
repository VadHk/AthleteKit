import 'package:flutter/material.dart';

class Styles {
  static final AppColors colors = AppColors();
}

class AppColors {
  late Color accentGreen;

  static final AppColors _appColors = AppColors._internal();
  factory AppColors() => _appColors;

  AppColors._internal() {
    accentGreen = const Color.fromARGB(255, 7, 140, 96);
  }
}
