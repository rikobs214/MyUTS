import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview_plus/device_preview_plus.dart';
import 'first_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), 
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Tugas Flutter',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFB2AC88), // Sage Green
          primary: const Color(0xFFB2AC88),
          secondary: const Color(0xFFD4AF37), // Gold
        ),
      ),
      home: const FirstScreen(),
    );
  }
}