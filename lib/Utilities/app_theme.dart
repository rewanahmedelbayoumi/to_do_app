import 'package:flutter/material.dart';
import 'package:to_do/Utilities/app_colors.dart';
import 'package:to_do/Utilities/app_styles.dart';

class AppTheme {
  static final ThemeData LightTheme = ThemeData(
    primaryColor: AppColors.primaryLightColor,
    dividerColor: AppColors.whiteColor,
    scaffoldBackgroundColor: AppColors.backgroundLightColor,

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryLightColor,
      toolbarHeight: 120,
    ),

    bottomAppBarTheme: BottomAppBarThemeData(
      color: AppColors.whiteColor,
      padding: EdgeInsets.zero,
      shape: CircularNotchedRectangle(),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      selectedIconTheme: IconThemeData(
        color: AppColors.primaryLightColor,
      ),
      unselectedIconTheme: IconThemeData(
        color: AppColors.greyDarkColor,
      ),
      selectedLabelStyle: AppStyles.bold15Primary,
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryLightColor,
      shape: StadiumBorder(
        side: BorderSide(
          color: AppColors.whiteColor,
          width: 4,
        ),
      ),
    ),

    textTheme: TextTheme(
        headlineLarge: AppStyles.bold22Dark,
        headlineMedium: AppStyles.bold14Black,
        headlineSmall: AppStyles.regular14Primary
    ),
  );


  static final ThemeData DarkTheme = ThemeData(
    primaryColor: AppColors.backgroundDarkColor,
    dividerColor: AppColors.backgroundDarkColor,
    scaffoldBackgroundColor: AppColors.backgroundDarkColor,

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkBlackColor,
      toolbarHeight: 140,
    ),

    bottomAppBarTheme: BottomAppBarThemeData(
      color: AppColors.whiteColor,
      padding: EdgeInsets.zero,
      shape: CircularNotchedRectangle(),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      selectedIconTheme: IconThemeData(
        color: AppColors.darkBlackColor,
      ),
      unselectedIconTheme: IconThemeData(
        color: AppColors.greyLightColor,
      ),
      selectedLabelStyle: AppStyles.bold15Black,
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.darkBlackColor,
      shape: StadiumBorder(
        side: BorderSide(
          color: AppColors.darkBlackColor,
          width: 4,
        ),
      ),
    ),

    textTheme: TextTheme(
      headlineLarge: AppStyles.bold22Dark,
      headlineMedium: AppStyles.bold14White,
    ),
  );
}