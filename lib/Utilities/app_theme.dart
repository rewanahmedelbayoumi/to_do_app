import 'package:flutter/material.dart';
import 'package:to_do/Utilities/app_colors.dart';
import 'package:to_do/Utilities/app_styles.dart';

class AppTheme{
  static ThemeData LightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundLightColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryLightColor,
      toolbarHeight: 120,
      ),
    textTheme: TextTheme(
      headlineLarge: AppStyles.bold22White
    )
      );
  static ThemeData DarkTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundDarkColor,
      appBarTheme: AppBarTheme(
          backgroundColor: AppColors.darkBlackColor,
        toolbarHeight: 140,
      ),
      textTheme: TextTheme(
      headlineLarge: AppStyles.bold22Dark
  )
  );
}