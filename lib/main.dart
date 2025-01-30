import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/routes.dart'; // Routes'ları yöneten dosya
import 'core/themes.dart'; // Tema dosyasını dahil et

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Flutter widget'larını başlat
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(), // Tema yönetimi için provider
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp.router(
          title: 'ShineUp', // Uygulama adı
          themeMode: themeProvider.isDark ? ThemeMode.dark : ThemeMode.light, // Gece ve gündüz modu seçimi
          theme: lightTheme, // Gündüz teması
          darkTheme: darkTheme, // Gece teması
          routerConfig: router, // go_router yapılandırması
          debugShowCheckedModeBanner: false, // Debug banner'ını kaldır
        );
      },
    );
  }
}
