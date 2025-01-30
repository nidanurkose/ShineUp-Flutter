import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../core/themes.dart'; // Temayı import ettim
import '../widgets/bottom_menu.dart'; // Alt menüyü import ettim

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.moon),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme(); // Temayı değiştirmek için
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: Text(
                      "NK", // Burada profil adı gösterilebilir
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  SizedBox(height: 16),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Nida Nur Köse"), // Ad Soyad
                    subtitle: Text("Ad Soyad"),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("nida.nur@live.com"), // E-posta
                    subtitle: Text("E-posta"),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () {
              // Hesaptan çıkış yapma işlevi burada olacak
            },
            icon: Icon(Icons.logout),
            label: Text("Hesaptan Çıkış Yap"),
            style: FilledButton.styleFrom(
              minimumSize: Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          if (context.canPop()) // Eğer geri dönme mümkunsa
            TextButton.icon(
              onPressed: () => context.pop(), // Geri git
              icon: Icon(Icons.arrow_back),
              label: Text("Geri Dön"),
              style: TextButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),
        ],
      ),
      bottomNavigationBar: BottomMenu(), // Alt menü
    );
  }
}
