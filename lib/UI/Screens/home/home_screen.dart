import 'package:flutter/material.dart';
import 'package:to_do/Utilities/app_assets.dart';

import '../../../Utilities/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Home Screen',
        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
          color: Colors.orange
        )
      ),
    ),
  );
  }
}



//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(AppAssets.splashImage);
//   }
