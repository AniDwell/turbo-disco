import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ORBERTRON'),
        centerTitle: true,
        actions: [
          IconButton(icon: const Icon(Icons.person), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                backgroundColor: Colors.cyan,
              ),
              onPressed: () {},
              icon: const Icon(Icons.play_arrow, size: 28, color: Colors.black),
              label: const Text('PLAY NOW', style: TextStyle(fontSize: 20, color: Colors.black)),
            ),
            const SizedBox(height: 16),
            _buildMenuButton(Icons.leaderboard, 'Leaderboard'),
            _buildMenuButton(Icons.emoji_events, 'Achievements'),
            _buildMenuButton(Icons.store, 'Marketplace'),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          side: const BorderSide(color: Colors.cyanAccent),
        ),
        onPressed: () {},
        icon: Icon(icon, color: Colors.cyanAccent),
        label: Text(title, style: const TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }
}
