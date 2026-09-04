import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/UI/providers/app_language_provider.dart';
import 'package:to_do/Utilities/app_colors.dart';
import 'package:to_do/l10n/app_localization_en.dart';
import '../../../../Utilities/app_styles.dart';
import '../../../../l10n/app_localization.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var languageProvider = Provider.of<AppLanguageProvider>(context);

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
          InkWell(
            onTap: () {
              // TODO: change language into English
              languageProvider.changeLanguage("en");
            },
            child: languageProvider.appLanguage == 'en'
                ? getSelectedLanguageItem(
              language: AppLocalizations.of(context)!.english,
            )
                : getUnselectedLanguageItem(
              language: AppLocalizations.of(context)!.english,
            ),
          ),
          InkWell(
            onTap: () {
              // TODO: change language into Arabic
              languageProvider.changeLanguage("ar");
            },
            child: languageProvider.appLanguage == 'ar'
                ? getSelectedLanguageItem(
              language: AppLocalizations.of(context)!.arabic,
            )
                : getUnselectedLanguageItem(
              language: AppLocalizations.of(context)!.arabic,
            ),
          ),
        ],
      ),
    );
  }

  Widget getSelectedLanguageItem({required String language}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          language,
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

  Widget getUnselectedLanguageItem({required String language}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          language,
          style: AppStyles.bold14Black,
        ),
      ],
    );
  }
}