import 'package:flutter/material.dart';
import 'dart:math';

class MotivationScreen extends StatefulWidget {
  const MotivationScreen({super.key});

  @override
  _MotivationScreenState createState() => _MotivationScreenState();
}

class _MotivationScreenState extends State<MotivationScreen> {
  final List<String> quotes = [
    "Başarı, tekrar tekrar denemekten gelir.",
    "Zorluklar, seni daha güçlü yapar.",
    "Hayallerine ulaşmak için bugünden başla!",
    "Kendine inan, her şey mümkün!",
    "Başarı, vazgeçmeyenlerin ödülüdür.",
    "Büyük işler küçük adımlarla başlar.",
  ];

  String currentQuote = "Motivasyon için bir söz al!";

  void _generateNewQuote() {
    setState(() {
      currentQuote = quotes[Random().nextInt(quotes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = MediaQuery.of(context).platformBrightness == Brightness.dark;
    final colors = isDarkMode ? darkColors : lightColors;

    return Scaffold(
      appBar: AppBar(
        title: Text("Motivation"),
        backgroundColor: colors["primary"],
      ),
      body: Container(
        width: double.infinity, // Sayfanın tamamını kaplamak için
        height: double.infinity, // Sayfanın tamamını kaplamak için
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/motivation.jpg"),
            fit: BoxFit.cover, // Arka planın tamamını kaplamasını sağlar
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, // Ortalamayı sağlar
            children: [
              // Motivasyon Sözünü Ortala ve Büyüt
              Text(
                currentQuote,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24, // Daha büyük yazı boyutu
                  fontWeight: FontWeight.bold,
                  color: colors["onSurface"],
                ),
              ),
              const SizedBox(height: 20),
              // Yeni Söz Al butonunu Ortala ve Büyüt
              ElevatedButton(
                onPressed: _generateNewQuote,
                style: ElevatedButton.styleFrom(
                  backgroundColor: colors["primary"],
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: Text(
                  "Yeni Söz",
                  style: TextStyle(
                    fontSize: 20, // Daha büyük yazı boyutu
                    fontWeight: FontWeight.bold,
                    color: colors["onPrimary"],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// **Renk Temaları**
const lightColors = {
  "primary": Color(0xFFD8E2DC),
  "onPrimary": Color(0xFF9D8189),
  "surface": Color(0xFFFFFFFF),
  "onSurface": Color(0xFF333333),
};

const darkColors = {
  "primary": Color(0xFF788585),
  "onPrimary": Color(0xFFF4ACB7),
  "surface": Color(0xFF202124),
  "onSurface": Color(0xFFFFFFFF),
};
