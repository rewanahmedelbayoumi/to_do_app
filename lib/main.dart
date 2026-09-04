import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/UI/providers/app_theme_provider.dart';
import 'package:to_do/UI/providers/task_provider.dart';
import 'Utilities/app_theme.dart';
import 'l10n/app_localization.dart';
import 'UI/providers/app_language_provider.dart';
import 'UI/Screens/home/home_screen.dart';
import 'Utilities/app_routes.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppLanguageProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AppThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TaskProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<AppLanguageProvider>(context);
    final themeProvider = Provider.of<AppThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: AppRoutes.homeRouteName,

      routes: {
        AppRoutes.homeRouteName: (context) => const HomeScreen(),
      },

      theme: AppTheme.LightTheme,
      darkTheme: AppTheme.DarkTheme,
      themeMode: themeProvider.appTheme,

      locale: Locale(languageProvider.appLanguage),

      localizationsDelegates:
      AppLocalizations.localizationsDelegates,

      supportedLocales:
      AppLocalizations.supportedLocales,
    );
  }
}