import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  // Tema ayarını kaydet
  static Future<void> saveThemeMode(bool isDarkMode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', isDarkMode);
  }

  // Tema ayarını yükle
  static Future<bool> loadThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isDarkMode') ?? false; // Varsayılan: Gündüz modu
  }
}
