import 'package:flutter/material.dart';

class CustomTheme  with ChangeNotifier{
  static bool _isDarkTheme = true;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Montserrat',
      brightness: Brightness.light
    );
  }
  static ThemeData get darkTheme {
    return ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Montserrat',
    );
  }
}