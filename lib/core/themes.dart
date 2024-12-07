import 'package:flutter/material.dart';

class AppThemes {
  // Gündüz Teması
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFFD8E2DC), // Açık pastel yeşil
    scaffoldBackgroundColor: const Color(0xFFFFFFFF), // Beyaz arka plan
    colorScheme: const ColorScheme.light(
      primary: Color(0xFFF4ACB7), // Soft pembe
      secondary: Color(0xFFD8E2DC), // Pastel yeşil
      background: Color(0xFFFFFFFF), // Beyaz
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFF4ACB7),
      foregroundColor: Colors.white,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xFFF4ACB7), // Düğme rengi
      textTheme: ButtonTextTheme.primary,
    ),
  );

  // Gece Teması
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF788585), // Dumanlı yeşil
    scaffoldBackgroundColor: const Color(0xFF202124), // Koyu gri
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF9D8189), // Soluk mor/pembe
      secondary: Color(0xFF6B8B7B), // Koyu zeytin yeşili
      background: Color(0xFF202124), // Siyah
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF9D8189),
      foregroundColor: Colors.white,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xFF9D8189),
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
