import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Layar Ketiga")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle_outline, size: 80, color: Colors.green),
            const SizedBox(height: 20),
            const Text("Halaman Terakhir", style: TextStyle(fontSize: 18)),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
              ),
              onPressed: () => Navigator.popUntil(context, (route) => route.isFirst),
              child: const Text("Kembali ke Awal"),
            ),
          ],
        ),
      ),
    );
  }
}