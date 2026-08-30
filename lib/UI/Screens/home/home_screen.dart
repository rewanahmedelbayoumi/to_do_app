import 'package:flutter/material.dart';
import 'package:to_do/Utilities/app_assets.dart';
import 'package:to_do/Utilities/app_colors.dart';
import 'package:to_do/l10n/app_localization.dart';

import '../../../Utilities/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.app_title,
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            color: Colors.white,
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Task List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
  BottomNavigationBarItem buildBottomNavBarItem(
  {required IconData? icon, required String label}
      ){
      return BottomNavigationBarItem(
        icon: Icon(icon),
        label: label
      );
  }
}