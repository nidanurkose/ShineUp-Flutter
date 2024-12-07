import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/loading_screen.dart';
import '../screens/home_screen.dart';
import '../screens/goals_screen.dart';
import '../screens/habits_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/settings_screen.dart';

// Router yapılandırması
final router = GoRouter(
  initialLocation: '/home', // Başlangıç rotası
  routes: [
    // Yükleme ekranı
    GoRoute(
      path: '/',
      builder: (context, state) => const LoadingScreen(),
    ),
    // Ana sayfa
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    // Hedefler sayfası
    GoRoute(
      path: '/goals',
      builder: (context, state) => const GoalsScreen(),
    ),
    // Alışkanlıklar sayfası
    GoRoute(
      path: '/habits',
      builder: (context, state) => const HabitsScreen(),
    ),
    // Profil sayfası
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    // Ayarlar sayfası
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
);
