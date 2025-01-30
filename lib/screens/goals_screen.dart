import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GoalsScreen extends StatefulWidget {
  const GoalsScreen({super.key});

  @override
  _GoalsScreenState createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  List<String> goals = [];

  @override
  void initState() {
    super.initState();
    _loadGoals();
  }

  // Hedefleri SharedPreferences'e kaydetmek
  Future<void> _saveGoals() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('goals', goals);
  }

  // Hedefleri SharedPreferences'ten yüklemek
  Future<void> _loadGoals() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      goals = prefs.getStringList('goals') ?? [];
    });
  }

  // Yeni hedef eklemek
  void _addGoal() {
    TextEditingController goalController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Yeni Hedef Ekle"),
          content: TextField(
            controller: goalController,
            decoration: InputDecoration(hintText: "Hedefinizi yazın"),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("İptal"),
            ),
            ElevatedButton(
              onPressed: () {
                if (goalController.text.isNotEmpty) {
                  setState(() {
                    goals.add(goalController.text);
                    _saveGoals(); // Hedefleri kaydet
                  });
                } else {
                  // Boş hedef girildiğinde uyarı
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Lütfen geçerli bir hedef girin.")),
                  );
                }
                Navigator.pop(context);
              },
              child: Text("Ekle"),
            ),
          ],
        );
      },
    );
  }

  // Hedefi silmek
  void _removeGoal(int index) {
    setState(() {
      goals.removeAt(index);
      _saveGoals(); // Hedefleri kaydet
    });
  }

  @override
  void dispose() {
    _saveGoals(); // Uygulama kapatılmadan önce hedefleri kaydet
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Mevcut modun renklerini almak (gündüz veya gece modu)
    final isDarkMode = MediaQuery.of(context).platformBrightness == Brightness.dark;
    final colors = isDarkMode ? darkColors : lightColors;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hedefler'),
        backgroundColor: colors["primary"],
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
                color: colors["primary"],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: goals.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    color: colors["surface"],
                    child: ListTile(
                      leading: Icon(Icons.check_circle, color: colors["success"]),
                      title: Text(
                        goals[index],
                        style: TextStyle(color: colors["onSurface"]),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: colors["error"]),
                        onPressed: () => _removeGoal(index), // Hedef silme
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _addGoal, // Yeni hedef ekleme
                style: ElevatedButton.styleFrom(
                  backgroundColor: colors["primary"],
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  "Yeni Hedef Ekle",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: colors["onPrimary"]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Gündüz modundaki renkler
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

// Gece modundaki renkler
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
