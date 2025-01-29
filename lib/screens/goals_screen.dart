import 'package:flutter/material.dart';

class GoalsScreen extends StatelessWidget {
  const GoalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hedefler'),
        backgroundColor: theme.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kişisel Hedeflerinizi Belirleyin!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: theme.primaryColor, // Başlık rengi
              ),
            ),
            const SizedBox(height: 20),
            
            // Hedefler listesi
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFF1F1F1), // Hafif gri arka plan
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1. Kilo Vermek',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey, // Renk
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Daha sağlıklı bir yaşam için 10 kg vermeyi hedefliyorum.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '2. Yeni Bir Dil Öğrenmek',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey, // Renk
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'İngilizce ve İspanyolca öğrenmeyi hedefliyorum.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '3. Düzenli Egzersiz Yapmak',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey, // Renk
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Her hafta 4 gün spor yapmayı hedefliyorum.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            
            // Yeni hedef eklemek için buton
            ElevatedButton(
              onPressed: () {
                // Hedef ekleme işlemi burada yapılacak
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.secondaryHeaderColor, // Buton rengi
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: const Text(
                'Yeni Hedef Ekle',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}