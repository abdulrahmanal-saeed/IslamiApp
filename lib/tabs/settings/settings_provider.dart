import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDark => themeMode == ThemeMode.dark;

  String get backgroundImagePath => isDark ?'assets/images/dark_bg.png'  : 'assets/images/default_bg.png';

  String language = 'ar';

  void ChangeThemeMode(ThemeMode selectedThemeMode){
    themeMode = selectedThemeMode;
    notifyListeners();
  }
  void changeLanguage(String SelectedLanguage ) {
    language = SelectedLanguage;
    notifyListeners();

  }
}