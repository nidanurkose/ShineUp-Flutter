import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/loading_screen.dart';
import '../screens/home_screen.dart';
import '../screens/goals_screen.dart';
import '../screens/habits_screen.dart';
import '../screens/history_screen.dart' ;
import '../screens/voice_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/login_screen.dart';

// Router yapılandırması
final router = GoRouter(
  initialLocation: '/home', // Başlangıç rotası
  routes: [
    // Yükleme ekranı
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const LoadingScreen(),
      ),
    ),
    // Ana sayfa
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const HomeScreen(),
      ),
    ),
    // Hedefler sayfası
    GoRoute(
      path: '/goals',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const GoalsScreen(),
      ),
    ),
    // Alışkanlıklar sayfası
    GoRoute(
      path: '/habits',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const HabitsScreen(),
      ),
    ),
    // Geçmiş sayfası
    GoRoute(
      path: '/history',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const HistoryScreen(),
      ),
    ),
    // HAkıllı Asistan sayfası
    GoRoute(
      path: '/voice',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const VoiceScreen(),
      ),
    ),
    // Profil sayfası
    GoRoute(
      path: '/profile',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const ProfileScreen(),
      ),
    ),
    // Ayarlar sayfası
    GoRoute(
      path: '/settings',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const SettingsScreen(),
      ),
    ),
    // Kayıt Ol sayfası
    GoRoute(
      path: '/login',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const LoginScreen(),
      ),
    ),
  ],
);
