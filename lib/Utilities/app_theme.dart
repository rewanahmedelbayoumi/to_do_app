import 'package:flutter/material.dart';
import 'package:to_do/Utilities/app_styles.dart';

class AppTheme{
  static ThemeData LightTheme = ThemeData(
    textTheme: TextTheme(
      headlineLarge: AppStyles.bold22White
    )
      );
  static ThemeData DarkTheme = ThemeData(
      textTheme: TextTheme(
      headlineLarge: AppStyles.bold22DarkColor
  )
  );
}