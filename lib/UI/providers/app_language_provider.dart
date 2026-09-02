import 'package:flutter/material.dart';


class AppLanguageProvider extends ChangeNotifier{
  //todo: 1- data , 2- Function
  String appLanguage = 'en';

  void changeLanguage(String newLanguage){
    //todo: newLanguage => user => select
    if(appLanguage == newLanguage){
      return ;
    }
    appLanguage = newLanguage ;
    notifyListeners();
  }
}