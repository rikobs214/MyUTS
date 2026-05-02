import 'package:flutter/material.dart';
import 'third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFF),
      appBar: AppBar(title: const Text("DASHBOARD"), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Selamat Datang di Beranda Utama", style: TextStyle(fontSize: 16, color: Colors.grey)),
              const SizedBox(height: 10),
              const Text("Aplikasi Mahasiswa", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 40),
              // Dashboard Action Card
              InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ThirdScreen())),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 15)],
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: const Color(0xFF0D47A1).withOpacity(0.1), child: const Icon(Icons.person, color: Color(0xFF0D47A1))),
                      const SizedBox(width: 15),
                      const Text("Lihat Profil Saya", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                    ],
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