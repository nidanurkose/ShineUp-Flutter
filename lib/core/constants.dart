import 'package:flutter/material.dart';

/// Gündüz Modu Renk Sabitleri
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

/// Gece Modu Renk Sabitleri
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

/// Genel Uygulama Sabitleri
const String appName = "ShineUp";
const String apiUrl = "https://api.example.com";
const String defaultAvatarText = "NK"; // Profil resmini temsil edecek yazı
const String defaultEmail = "example@shineup.com";

/// İkonlar
const IconData defaultIcon = Icons.person;
const IconData logoutIcon = Icons.logout;
