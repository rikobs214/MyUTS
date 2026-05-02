import 'package:flutter/material.dart';
import 'third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: const Text("Layar Kedua"),
        backgroundColor: const Color(0xFFD4AF37),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFFB2AC88),
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 20),
            const Text("Ini adalah Layar Kedua", style: TextStyle(fontSize: 18)),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFB2AC88), 
                foregroundColor: Colors.white
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ThirdScreen()));
              },
              child: const Text("Ke Layar Ketiga"),
            ),
          ],
        ),
      ),
    );
  }
}