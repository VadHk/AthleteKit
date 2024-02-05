import 'package:athletekit/src/styles/app_theme.dart';
import 'package:athletekit/src/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

final stringProvider = Provider((ref) => 'Riverpod in progress!!!');

void main() {
  runApp(const App());
}

// TODO: Add Routing
// TODO: Add Localization
// TODO: Add Riverpod logic
// TODO: Add Login & check authorization

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AthletKit',
      debugShowCheckedModeBanner: false,
      theme: appTheme(Brightness.light),
      darkTheme: appTheme(Brightness.dark),
      home: const HomePage(title: 'AthleteKit'),
    );
  }
}
