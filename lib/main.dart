import 'package:athletekit/common/const.dart';
import 'package:athletekit/common/enums.dart';
import 'package:athletekit/generated/l10n.dart';
import 'package:athletekit/src/providers/state_providers/state_providers.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:athletekit/src/styles/app_theme.dart';
import 'package:athletekit/src/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// TODO: Add Routing
// TODO: Add Riverpod logic
// TODO: Add Errore handler
// TODO: Add Login & check authorization

final StateProviders stateProviders = StateProviders();

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showPerformanceOverlay: false,
      locale: AppLanguage.en.value,
      supportedLocales: locales,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: appTheme(Brightness.light),
      darkTheme: appTheme(Brightness.dark),
      home: const HomePage(),
    );
  }
}
