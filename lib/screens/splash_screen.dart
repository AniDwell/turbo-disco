import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigates to HomeScreen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display Logo Image
            Image.asset(
              'assets/images/logo.png',
              width: 160,
              height: 160,
              // Fallback icon if logo image fails to load
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.sports_esports,
                  size: 100,
                  color: Colors.cyanAccent,
                );
              },
            ),
            const SizedBox(height: 24),
            const Text(
              'ORBERTRON',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.cyanAccent,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 30),
            const CircularProgressIndicator(color: Colors.cyanAccent),
          ],
        ),
      ),
    );
  }
}
