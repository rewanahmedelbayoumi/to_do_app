import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/Utilities/app_routes.dart';
import 'package:to_do/Utilities/app_theme.dart';
import 'package:to_do/l10n/app_localization.dart';
import 'package:to_do/providers/app_language_provider.dart';
import 'UI/Screens/home/home_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppLanguageProvider(),
        child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<AppLanguageProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeRouteName,
      routes: {
        AppRoutes.homeRouteName: (context) => const HomeScreen(),
      },
      theme: AppTheme.LightTheme,
      darkTheme: AppTheme.DarkTheme,
      themeMode: ThemeMode.light,
      locale: Locale((languageProvider.appLanguage)),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}