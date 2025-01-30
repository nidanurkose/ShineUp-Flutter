import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HabitsScreen extends StatefulWidget {
  const HabitsScreen({super.key});

  @override
  _HabitsScreenState createState() => _HabitsScreenState();
}

class _HabitsScreenState extends State<HabitsScreen> {
  // Başlangıçta gösterilecek alışkanlıklar
  final List<String> habits = [
    "Sabah Egzersizi",
    "Düzenli Su İçme",
    "Sağlıklı Yatış Saati",
  ];

  void _addHabit() {
    TextEditingController habitController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Yeni Alışkanlık Ekle"),
          content: TextField(
            controller: habitController,
            decoration: InputDecoration(hintText: "Alışkanlığınızı yazın"),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), // Dialogu kapat
              child: Text("İptal"),
            ),
            ElevatedButton(
              onPressed: () {
                if (habitController.text.isNotEmpty) {
                  setState(() {
                    habits.add(habitController.text); // Yeni alışkanlık ekle
                  });
                }
                Navigator.pop(context); // Dialogu kapat
              },
              child: Text("Ekle"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Alışkanlıklar'),
        backgroundColor: theme.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Lottie.asset(
                'assets/motions/habits.lottie', // Kendi animasyon dosyanızı burada belirtebilirsiniz
                width: 200,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Alışkanlıklarınızı Buradan Takip Edin',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: theme.primaryColor,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: habits.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.check_circle, color: theme.primaryColor),
                      title: Text(
                        habits[index],
                        style: TextStyle(color: theme.primaryColor),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.redAccent),
                        onPressed: () {
                          setState(() {
                            habits.removeAt(index); // Alışkanlık silme
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _addHabit, // Yeni alışkanlık eklemek için buton
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.primaryColor,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  "Yeni Alışkanlık Ekle",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
