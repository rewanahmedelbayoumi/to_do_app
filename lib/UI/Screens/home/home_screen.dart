import 'package:flutter/material.dart';
import 'package:to_do/l10n/app_localization.dart';
import 'package:to_do/Utilities/app_assets.dart';
import 'package:to_do/Utilities/app_colors.dart';
import 'package:to_do/UI/Screens/settings/settings_tab.dart';
import '../../../Utilities/app_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: currentIndex == 0
          ? Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.app_title,
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      )
          : const SettingsTab(),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.menu),
            label: 'Task List',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavBarItem({
    required IconData? icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}