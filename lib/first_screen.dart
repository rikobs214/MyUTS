import 'package:flutter/material.dart';
import 'second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Beranda", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFFB2AC88),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.spa, size: 80, color: Color(0xFFB2AC88)),
            const SizedBox(height: 20),
            const Text("Selamat Datang", 
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFFB2AC88))),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD4AF37),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen()));
              },
              child: const Text("Ke Layar Kedua"),
            ),
          ],
        ),
      ),
    );
  }
}