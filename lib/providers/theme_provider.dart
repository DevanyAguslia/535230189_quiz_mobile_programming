import 'package:flutter/material.dart';
import 'package:flutter_application_6/themes/app_themes.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _currentTheme = themeA;
  String _currentFont = 'Roboto';

  ThemeData get currentTheme => _currentTheme;
  String get currentFont => _currentFont;

  get brightness => null;

  void setTheme(ThemeData theme) {
    _currentTheme = theme;
    notifyListeners();
  }

  void setFont(String font) {
    _currentFont = font;
    notifyListeners();
  }

  void setBrightness(double value) {}
}
