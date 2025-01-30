import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Tema rengini yönetmek için kullanılan sağlayıcı (provider)
class ThemeProvider with ChangeNotifier {
  bool _isDark = false;
  bool get isDark => _isDark;

  void toggleTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}

// Gündüz modundaki renkler
const lightColors = {
  "primary": Color(0xFFD8E2DC), // Açık pastel yeşil
  "onPrimary": Color(0xFF9D8189), // Soluk mor/pembe
  "secondary": Color(0xFFFFE5D9), // Açık pastel pembe
  "onSecondary": Color(0xFF9D8189), // Soluk mor/pembe
  "accent": Color(0xFFF4ACB7), // Soft pembemsi ton
  "background": Color(0xFFFFFFFF), // Beyaz
  "surface": Color(0xFFFFFFFF), // Beyaz
  "onSurface": Color(0xFF9D8189), // Soluk mor/pembe
  "success": Colors.green,
  "error": Colors.red,
  "onError": Colors.white,
};

// Gece modundaki renkler
const darkColors = {
  "primary": Color(0xFF788585), // Dumanlı yeşil
  "onPrimary": Color(0xFFF4ACB7), // Soft pembemsi ton
  "secondary": Color(0xFF9D8189), // Pastel gül tonları
  "onSecondary": Color(0xFFFFFFFF), // Beyaz
  "accent": Color(0xFF6B8B7B), // Koyu zeytin yeşili
  "background": Color(0xFF202124), // Koyu gri/siyah
  "surface": Color(0xFF202124), // Koyu gri/siyah
  "onSurface": Color(0xFFFFFFFF), // Beyaz
  "success": Colors.green,
  "error": Colors.red,
  "onError": Colors.white,
};

// Işıklı tema
final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: lightColors["primary"]!,
    onPrimary: lightColors["onPrimary"]!,
    secondary: lightColors["secondary"]!,
    onSecondary: lightColors["onSecondary"]!,
    error: lightColors["error"]!,
    onError: lightColors["onError"]!,
    surface: lightColors["surface"]!,
    onSurface: lightColors["onSurface"]!,
  ),
  textTheme: TextTheme(
    bodySmall: GoogleFonts.roboto(),
    bodyMedium: GoogleFonts.roboto(),
    bodyLarge: GoogleFonts.roboto(),
    labelSmall: GoogleFonts.roboto(),
    labelMedium: GoogleFonts.roboto(),
    labelLarge: GoogleFonts.roboto(),
    titleSmall: GoogleFonts.roboto(),
    titleMedium: GoogleFonts.roboto(),
    titleLarge: GoogleFonts.roboto(),
    headlineSmall: GoogleFonts.aBeeZee(),
    headlineMedium: GoogleFonts.aBeeZee(),
    headlineLarge: GoogleFonts.aBeeZee(),
    displaySmall: GoogleFonts.abrilFatface(),
    displayMedium: GoogleFonts.abrilFatface(),
    displayLarge: GoogleFonts.abrilFatface(),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: lightColors["primary"], // Buton rengini ayarlamak için
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(lightColors["onPrimary"]), // Buton yazısı rengi
    ),
  ),
);

// Karanlık tema
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    brightness: Brightness.dark,
    primary: darkColors["primary"]!,
    onPrimary: darkColors["onPrimary"]!,
    secondary: darkColors["secondary"]!,
    onSecondary: darkColors["onSecondary"]!,
    error: darkColors["error"]!,
    onError: darkColors["onError"]!,
    surface: darkColors["surface"]!,
    onSurface: darkColors["onSurface"]!,
  ),
  textTheme: TextTheme(
    bodySmall: GoogleFonts.roboto(),
    bodyMedium: GoogleFonts.roboto(),
    bodyLarge: GoogleFonts.roboto(),
    labelSmall: GoogleFonts.roboto(),
    labelMedium: GoogleFonts.roboto(),
    labelLarge: GoogleFonts.roboto(),
    titleSmall: GoogleFonts.roboto(),
    titleMedium: GoogleFonts.roboto(),
    titleLarge: GoogleFonts.roboto(),
    headlineSmall: GoogleFonts.aBeeZee(),
    headlineMedium: GoogleFonts.aBeeZee(),
    headlineLarge: GoogleFonts.aBeeZee(),
    displaySmall: GoogleFonts.abrilFatface(),
    displayMedium: GoogleFonts.abrilFatface(),
    displayLarge: GoogleFonts.abrilFatface(),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: darkColors["primary"], // Buton rengini ayarlamak için
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(darkColors["onPrimary"]), // Buton yazısı rengi
    ),
  ),
);
