import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShineUp',
      theme: ThemeData(
        primaryColor: Colors.deepPurple, // Ana renk
        secondaryHeaderColor: Colors.orange, // İkinci renk
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.green, // Buton arka plan rengi
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // Aktif temayı alıyoruz
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShineUp'),
        backgroundColor: theme.primaryColor, // AppBar rengi
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Home butonunu en üstte "Ana Sayfa" başlığının yerine koyuyoruz
            ElevatedButton(
              onPressed: () {
                context.go('/home');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.primaryColor, // Buton rengi
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/shineup_home.png', // İkon yolu
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(width: 8),
                  const Text('Ana Sayfa'), // Buton metni
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Hedefler Butonu ve İkonu
            ElevatedButton(
              onPressed: () {
                context.go('/goals');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.secondaryHeaderColor, // Buton rengi
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/shineup_goals.png', // İkon yolu
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(width: 8),
                  const Text('Hedefler'), // Hedefler metni
                ],
              ),
            ),
            const SizedBox(height: 10),
            // Alışkanlıklar Butonu
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/habits');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.secondaryHeaderColor, // Buton rengi
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/shineup_habits.png', // İkon yolu
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(width: 8),
                  const Text('Alışkanlıklar'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            // Profil Butonu
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.secondaryHeaderColor, // Buton rengi
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/shineup_profile.png', // İkon yolu
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(width: 8),
                  const Text('Profil'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            // Ayarlar Butonu
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.secondaryHeaderColor, // Buton rengi
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/shineup_settings.png', // İkon yolu
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(width: 8),
                  const Text('Ayarlar'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
