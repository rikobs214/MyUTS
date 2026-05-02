import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("PROFIL SAYA")),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const CircleAvatar(radius: 50, backgroundColor: Color(0xFF0D47A1), child: Icon(Icons.account_circle, size: 70, color: Colors.white)),
            const SizedBox(height: 30),
            // Profile Info Card
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.black12)),
              child: const Column(
                children: [
                  ListTile(leading: Icon(Icons.badge), title: Text("Nama"), subtitle: Text("Riko Bagus Saputra")),
                  Divider(),
                  ListTile(leading: Icon(Icons.fingerprint), title: Text("NIM"), subtitle: Text("224140214")),
                  Divider(),
                  ListTile(leading: Icon(Icons.class_), title: Text("Kelas"), subtitle: Text("4ITA1")),
                  Divider(),
                  ListTile(leading: Icon(Icons.school), title: Text("Jurusan"), subtitle: Text("Teknik Informatika")),
                ],
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () => Navigator.popUntil(context, (route) => route.isFirst),
              child: const Text("LOGOUT", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}