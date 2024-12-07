import 'package:flutter/material.dart';
import 'core/routes.dart'; // Routes'ları yöneten dosya

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Flutter widget'larını başlat
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ShineUp',
      theme: ThemeData(
        brightness: Brightness.light, // Gündüz modu
        primaryColor: const Color.fromARGB(255, 118, 139, 127), // Açık pastel yeşil
        scaffoldBackgroundColor: const Color(0xFFFFFFFF), // Beyaz arka plan
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 243, 169, 180), // Soft pembe
          foregroundColor: Color.fromARGB(255, 173, 169, 169), // Yazı rengi
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark, // Gece modu
        primaryColor: const Color(0xFF788585), // Dumanlı yeşil
        scaffoldBackgroundColor: const Color(0xFF202124), // Siyah arka plan
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 172, 143, 151), // Soluk mor/pembe
          foregroundColor: Colors.white, // Yazı rengi
        ),
      ),
      themeMode: ThemeMode.system, // Cihazın tema ayarına göre değişir
      routerConfig: router, // Rota yapılandırması
      debugShowCheckedModeBanner: false, // Debug banner'ı kaldırır
    );
  }
}


