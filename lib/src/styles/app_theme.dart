import 'package:athletekit/src/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme(Brightness mode) => ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: accentGreen,
        brightness: mode,
      ),
      textTheme: TextTheme(
        displayLarge: const TextStyle(
          fontSize: 72,
          fontWeight: FontWeight.bold,
        ),
        titleLarge: GoogleFonts.aDLaMDisplay(
          fontSize: 30,
          fontStyle: FontStyle.normal,
        ),
        bodyMedium: GoogleFonts.merriweather(),
        displaySmall: GoogleFonts.pacifico(),
      ),
    );
