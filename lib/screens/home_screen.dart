import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // Aktif temayı alıyoruz
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
        backgroundColor: theme.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hedeflerinize Hoş Geldiniz!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: theme.primaryColor,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/goals'); // Hedefler sayfasına yönlendirme
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.secondaryHeaderColor,
              ),
              child: const Text('Hedefler'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/habits'); // Alışkanlıklar sayfasına yönlendirme
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.secondaryHeaderColor,
              ),
              child: const Text('Alışkanlıklar'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile'); // Profil sayfasına yönlendirme
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.secondaryHeaderColor,
              ),
              child: const Text('Profil'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings'); // Ayarlar sayfasına yönlendirme
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.secondaryHeaderColor,
              ),
              child: const Text('Ayarlar'),
            ),
          ],
        ),
      ),
    );
  }
}

