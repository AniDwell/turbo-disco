import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const OrbertronApp());
}

class OrbertronApp extends StatelessWidget {
  const OrbertronApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Orbertron',
      theme: ThemeData.dark(),
      home: const SplashScreen(),
    );
  }
}
