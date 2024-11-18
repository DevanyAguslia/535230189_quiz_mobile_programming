import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'settings_screen.dart';
import '../providers/theme_provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Main Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is the Main Screen',
              style: TextStyle(
                  fontSize: 20, fontFamily: themeProvider.currentFont),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsScreen()),
                );
              },
              child: const Text('Go to Settings'),
            ),
            const SizedBox(height: 20),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'This is a Card',
                      style: TextStyle(fontFamily: themeProvider.currentFont),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Font applied: ${themeProvider.currentFont}',
                      style: TextStyle(fontFamily: themeProvider.currentFont),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Nama saya Devany.',
              style: TextStyle(
                  fontSize: 18, fontFamily: themeProvider.currentFont),
            ),
          ],
        ),
      ),
    );
  }
}
