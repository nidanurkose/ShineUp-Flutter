import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../core/themes.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/suggested_action_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShineUp', style: Theme.of(context).textTheme.headlineMedium),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.moon_stars),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                child: Icon(
                  CupertinoIcons.person_circle,
                  size: 50,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
              accountName: Text("Hoşgeldiniz"),
              accountEmail: null,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text('Ana Sayfa'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.flag),
              title: Text('Hedefler'),
              onTap: () => context.push("/goals"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.check_mark_circled),
              title: Text('Alışkanlıklar'),
              onTap: () => context.push("/habits"),
            ),
             ListTile(
              leading: Icon(CupertinoIcons.mic),
              title: Text('Voice Screen'),
              onTap: () => context.push("/voice"),
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('History Screen'),
              onTap: () => context.push("/history"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.person),
              title: Text('Login Screen'),
              onTap: () => context.push("/login"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.settings),
              title: Text('Ayarlar'),
              onTap: () => context.push("/settings"),
            ),
            Spacer(),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Çıkış Yap'),
              onTap: () => context.go("/login"),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(15),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: DotLottieLoader.fromAsset(
                    "assets/motions/motivation.lottie",  // Burada DotLottieLoader kullanıldı
                    frameBuilder: (context, dotlottie) {
                      if (dotlottie != null) {
                        return Lottie.memory(
                          dotlottie.animations.values.single,
                        );
                      }
                      return const SizedBox();
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
                ),
                child: ListView(
                  padding: EdgeInsets.all(24),
                  children: [
                    SuggestedActionCard(
                      icon: Icons.flag,
                      title: "Hedeflerini Belirle",
                      subtitle: "Kişisel gelişim hedefleri koy",
                      onTap: () => context.push("/goals"),
                    ),
                    SizedBox(height: 16),
                    SuggestedActionCard(
                      icon: Icons.check,
                      title: "Alışkanlıklarını Takip Et",
                      subtitle: "Günlük alışkanlıklarını oluştur ve takip et",
                      onTap: () => context.push("/habits"),
                    ),
                    SizedBox(height: 16),
                    SuggestedActionCard(
                      icon: Icons.mood,
                      title: "Motivasyonunu Artır",
                      subtitle: "Günlük motivasyon alıntıları keşfet",
                      onTap: () => context.push("/motivation"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
