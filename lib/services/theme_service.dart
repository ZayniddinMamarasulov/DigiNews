import 'package:flutter/material.dart';
import 'package:news_app/utils/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeServiceProvider extends ChangeNotifier {
  ThemeData? _selectedTheme;
  SharedPreferences? prefs;

  ThemeData dark = DigiTheme.dark;
  ThemeData light = DigiTheme.light;

  ThemeServiceProvider(bool darkThemeOn) {
    // dastur ishga tushganda darkThemeOn'ga false yoki true bervoradi
    // true - dark , false - light theme
    _selectedTheme = darkThemeOn ? dark : light;
  }

  Future<void> changeTheme() async {
    prefs = await SharedPreferences.getInstance();

    if (_selectedTheme == dark) {
      _selectedTheme = light;
      await prefs?.setBool("darkTheme", false);
    } else {
      _selectedTheme = dark;
      await prefs?.setBool("darkTheme", true);
    }
    notifyListeners();
  }

  // o'zgargandagi themeni olish
  ThemeData? getTheme() => _selectedTheme;
}
