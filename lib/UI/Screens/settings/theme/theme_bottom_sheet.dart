import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/UI/providers/app_theme_provider.dart';
import 'package:to_do/Utilities/app_colors.dart';
import 'package:to_do/Utilities/app_styles.dart';
import 'package:to_do/l10n/app_localization.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    var themeProvider = Provider.of<AppThemeProvider>(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.04,
        vertical: height * 0.06,
      ),
      child: Column(
        spacing: height * 0.04,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Dark Mode
          InkWell(
            onTap: () {
              themeProvider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: themeProvider.isDarkMode()
                ? getSelectedThemeItem(
              theme: AppLocalizations.of(context)!.dark,
            )
                : getUnselectedThemeItem(
              theme: AppLocalizations.of(context)!.dark,
            ),
          ),

          // Light Mode
          InkWell(
            onTap: () {
              themeProvider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: !themeProvider.isDarkMode()
                ? getSelectedThemeItem(
              theme: AppLocalizations.of(context)!.light,
            )
                : getUnselectedThemeItem(
              theme: AppLocalizations.of(context)!.light,
            ),
          ),
        ],
      ),
    );
  }

  Widget getSelectedThemeItem({
    required String theme,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          theme,
          style: AppStyles.bold18Primary,
        ),
        Icon(
          Icons.check,
          size: 25,
          color: AppColors.primaryLightColor,
        ),
      ],
    );
  }

  Widget getUnselectedThemeItem({
    required String theme,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          theme,
          style: AppStyles.bold14Black,
        ),
        Icon(
          Icons.check,
          size: 25,
          color: AppColors.primaryLightColor,
        ),
      ],
    );
  }
}