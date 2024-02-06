

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier{

  String AppLanguage='en';
  ThemeMode AppThemeMode= ThemeMode.light;

  void ChangeAppLanguage(String lang){
    if(AppLanguage == lang){
      return;
    }
    AppLanguage = lang;
    notifyListeners();
  }

  void ChangeAppTheme(ThemeMode appThemeMode){
    if(appThemeMode == AppThemeMode){
      return;
    }
    AppThemeMode =appThemeMode;
    notifyListeners();
  }
}