import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,  
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,  // Ekranda ortalamak için
        crossAxisAlignment: CrossAxisAlignment.center,  // Yatayda ortalamak için
        children: [
          // Logo ve yükleme göstergesi bölümü
          Container(
            width: double.infinity,  // Genişliği ekranın tamamı kadar yapıyoruz
            child: Column(
              mainAxisSize: MainAxisSize.min,  // Yükseklik içinde otomatik sıkıştırma
              children: [
                // Logo bölümü
                Container(
                  width: 180,  // Logonun genişliği
                  height: 180,  // Logonun yüksekliği
                  child: Image.asset(
                    'assets/images/shineup_logo.webp',  // Logo dosyasını ekle
                    fit: BoxFit.contain,  // Görseli kutuya sığacak şekilde yerleştiriyoruz
                  ),
                ),
                
                const SizedBox(height: 40),  // Logodan sonra biraz boşluk bırakıyoruz
                
                // Yükleme animasyonu (ikonu)
                const CupertinoActivityIndicator(
                  radius: 20,  // Aktivite göstergesinin çapı
                  animating: true,  // Sürekli animasyon
                ),
                
                const SizedBox(height: 20),  // Aktivite göstergesinden sonra boşluk
                
                // Yükleniyor yazısı
                const Text(
                  'Uygulama Yükleniyor...',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,  // Metin rengini mavi yapıyoruz
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
