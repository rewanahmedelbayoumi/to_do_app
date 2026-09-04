import 'package:flutter/material.dart';
import 'package:to_do/Utilities/app_colors.dart';
import 'package:to_do/Utilities/app_styles.dart';

class AppTheme {

  // LIGHT THEME
  static final ThemeData LightTheme = ThemeData(
    useMaterial3: true,

    brightness: Brightness.light,

    primaryColor: AppColors.primaryLightColor,
    scaffoldBackgroundColor: AppColors.backgroundLightColor,

    colorScheme: ColorScheme.light(
      primary: AppColors.primaryLightColor,
      surface: AppColors.backgroundLightColor,
      onSurface: AppColors.darkBlackColor,
    ),

    dividerColor: Colors.transparent,

    // APP BAR
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryLightColor,
      foregroundColor: AppColors.whiteColor,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: false,
      toolbarHeight: 100,
      titleTextStyle: AppStyles.bold22Dark,
    ),

    // BOTTOM APP BAR
    bottomAppBarTheme: BottomAppBarThemeData(
      color: AppColors.whiteColor,
      elevation: 8,
      shadowColor: Colors.black12,
      padding: EdgeInsets.zero,
      shape: const CircularNotchedRectangle(),
    ),

    // BOTTOM NAVIGATION BAR
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.whiteColor,
      elevation: 8,

      type: BottomNavigationBarType.fixed,

      selectedItemColor: AppColors.primaryLightColor,
      unselectedItemColor: AppColors.greyDarkColor,

      selectedIconTheme: IconThemeData(
        color: AppColors.primaryLightColor,
        size: 27,
      ),

      unselectedIconTheme: IconThemeData(
        color: AppColors.greyDarkColor,
        size: 24,
      ),

      selectedLabelStyle: AppStyles.bold15Primary,

      showUnselectedLabels: true,

      unselectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.greyDarkColor,
      ),
    ),

    // FLOATING ACTION BUTTON
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryLightColor,
      foregroundColor: AppColors.whiteColor,

      elevation: 5,

      shape: const CircleBorder(
        side: BorderSide(
          color: Colors.white,
          width: 4,
        ),
      ),

      extendedTextStyle: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
    ),

    // TEXT THEME
    textTheme: TextTheme(
      headlineLarge: AppStyles.bold22Dark,

      headlineMedium: AppStyles.bold14Black,

      headlineSmall: AppStyles.regular14Primary,

      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.darkBlackColor,
      ),

      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.greyDarkColor,
      ),

      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.greyDarkColor,
      ),
    ),

    // INPUT FIELDS
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.whiteColor,

      contentPadding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 16,
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: AppColors.primaryLightColor,
          width: 1.5,
        ),
      ),

      hintStyle: TextStyle(
        fontSize: 14,
        color: AppColors.greyDarkColor,
      ),
    ),

    // CARD
    cardTheme: CardThemeData(
      color: AppColors.whiteColor,
      elevation: 2,
      shadowColor: Colors.black12,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),

    // CHECKBOX
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),

      side: BorderSide(
        color: AppColors.greyDarkColor,
        width: 1.5,
      ),

      fillColor: WidgetStateProperty.resolveWith<Color?>(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.primaryLightColor;
          }
          return Colors.transparent;
        },
      ),
    ),

    // SWITCH
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith<Color?>(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.primaryLightColor;
          }
          return AppColors.greyDarkColor;
        },
      ),

      trackColor: WidgetStateProperty.resolveWith<Color?>(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.primaryLightColor.withOpacity(0.35);
          }
          return AppColors.greyDarkColor.withOpacity(0.2);
        },
      ),
    ),

    // DIALOG
    dialogTheme: DialogThemeData(
      backgroundColor: AppColors.whiteColor,
      elevation: 8,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
    ),
  );


  // DARK THEME
  static final ThemeData DarkTheme = ThemeData(
    useMaterial3: true,

    brightness: Brightness.dark,

    primaryColor: AppColors.darkBlackColor,
    scaffoldBackgroundColor: AppColors.backgroundDarkColor,

    colorScheme: ColorScheme.dark(
      primary: AppColors.darkBlackColor,
      surface: AppColors.backgroundDarkColor,
      onSurface: AppColors.whiteColor,
    ),

    dividerColor: Colors.transparent,

    // APP BAR
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkBlackColor,
      foregroundColor: AppColors.whiteColor,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: false,
      toolbarHeight: 100,
      titleTextStyle: AppStyles.bold22Dark,
    ),

    // BOTTOM APP BAR
    bottomAppBarTheme: BottomAppBarThemeData(
      color: AppColors.darkBlackColor,
      elevation: 8,
      shadowColor: Colors.black,
      padding: EdgeInsets.zero,
      shape: const CircularNotchedRectangle(),
    ),

    // BOTTOM NAVIGATION BAR
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.darkBlackColor,
      elevation: 8,

      type: BottomNavigationBarType.fixed,

      selectedItemColor: AppColors.whiteColor,
      unselectedItemColor: AppColors.greyLightColor,

      selectedIconTheme: IconThemeData(
        color: AppColors.whiteColor,
        size: 27,
      ),

      unselectedIconTheme: IconThemeData(
        color: AppColors.greyLightColor,
        size: 24,
      ),

      selectedLabelStyle: AppStyles.bold15Black,

      showUnselectedLabels: true,

      unselectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.greyLightColor,
      ),
    ),

    // FLOATING ACTION BUTTON
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.darkBlackColor,
      foregroundColor: AppColors.whiteColor,

      elevation: 5,

      shape: const CircleBorder(
        side: BorderSide(
          color: Colors.white,
          width: 4,
        ),
      ),
    ),

    // TEXT THEME
    textTheme: TextTheme(
      headlineLarge: AppStyles.bold22Dark,

      headlineMedium: AppStyles.bold14White,

      headlineSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.whiteColor,
      ),

      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.whiteColor,
      ),

      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.greyLightColor,
      ),

      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.greyLightColor,
      ),
    ),

    // INPUT FIELDS
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.darkBlackColor,

      contentPadding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 16,
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: AppColors.whiteColor,
          width: 1.5,
        ),
      ),

      hintStyle: TextStyle(
        fontSize: 14,
        color: AppColors.greyLightColor,
      ),
    ),

    // CARD
    cardTheme: CardThemeData(
      color: AppColors.darkBlackColor,
      elevation: 2,
      shadowColor: Colors.black54,
      margin: EdgeInsets.zero,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),

    // CHECKBOX
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),

      side: BorderSide(
        color: AppColors.greyLightColor,
        width: 1.5,
      ),

      fillColor: WidgetStateProperty.resolveWith<Color?>(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.whiteColor;
          }
          return Colors.transparent;
        },
      ),

      checkColor: WidgetStateProperty.all(
        AppColors.darkBlackColor,
      ),
    ),

    // SWITCH
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith<Color?>(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.whiteColor;
          }
          return AppColors.greyLightColor;
        },
      ),

      trackColor: WidgetStateProperty.resolveWith<Color?>(
            (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.whiteColor.withOpacity(0.3);
          }
          return AppColors.greyLightColor.withOpacity(0.2);
        },
      ),
    ),

    // DIALOG
    dialogTheme: DialogThemeData(
      backgroundColor: AppColors.darkBlackColor,
      elevation: 8,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
    ),
  );
}