import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/UI/Screens/settings/language/language_bottom_sheet.dart';
import 'package:to_do/UI/providers/app_language_provider.dart';
import 'package:to_do/Utilities/app_colors.dart';
import 'package:to_do/Utilities/app_styles.dart';
import 'package:to_do/l10n/app_localization.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var languageProvider = Provider.of<AppLanguageProvider>(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.09,
        vertical: height * 0.02,
      ),
      child: Column(
        spacing: height * 0.02,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.headlineMedium,
          ),

          Container(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.04,
              vertical: height * 0.02,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColors.primaryLightColor,
                width: 2,
              ),
              color: Theme.of(context).dividerColor,
            ),
            child: InkWell(
              onTap: () {
                showLanguageBottomSheet(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(languageProvider.appLanguage == 'en'?
                    AppLocalizations.of(context)!.english:
                  AppLocalizations.of(context)!.arabic,
                    style: AppStyles.regular14Primary,
                  ),

                  Icon(
                    Icons.arrow_drop_down_circle_outlined,
                    size: 25,
                    color: AppColors.primaryLightColor,
                  ),
                ],
              ),
            ),
          ),

          Text(
            AppLocalizations.of(context)!.mode,
            style: Theme.of(context).textTheme.headlineMedium,
          ),

          Container(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.04,
              vertical: height * 0.02,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColors.primaryLightColor,
                width: 2,
              ),
              color: Theme.of(context).dividerColor,
            ),
            child: InkWell(
              onTap: () {
                // TODO: show theme bottom sheet
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.light,
                    style: AppStyles.regular14Primary,
                  ),

                  Icon(
                    Icons.arrow_drop_down_circle_outlined,
                    size: 25,
                    color: AppColors.primaryLightColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottomSheet(),
    );
  }
}