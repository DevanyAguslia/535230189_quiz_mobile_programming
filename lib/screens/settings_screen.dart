import 'package:flutter/material.dart';
import 'package:flutter_application_6/themes/app_themes.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Settings Screen')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Choose Theme:', style: TextStyle(fontSize: 18)),
            ListTile(
              title: const Text('Theme A'),
              leading: Radio(
                value: themeA,
                groupValue: themeProvider.currentTheme,
                onChanged: (value) {
                  themeProvider.setTheme(value!);
                },
              ),
            ),
            ListTile(
              title: const Text('Theme B'),
              leading: Radio(
                value: themeB,
                groupValue: themeProvider.currentTheme,
                onChanged: (value) {
                  themeProvider.setTheme(value!);
                },
              ),
            ),
            ListTile(
              title: const Text('Theme C'),
              leading: Radio(
                value: themeC,
                groupValue: themeProvider.currentTheme,
                onChanged: (value) {
                  themeProvider.setTheme(value!);
                },
              ),
            ),
            const SizedBox(height: 20),
            const Text('Choose Font:', style: TextStyle(fontSize: 18)),
            ...fontOptions.map((font) {
              return ListTile(
                title: Text(font, style: TextStyle(fontFamily: font)),
                leading: Radio(
                  value: font,
                  groupValue: themeProvider.currentFont,
                  onChanged: (value) {
                    themeProvider.setFont(value!);
                  },
                ),
              );
            }).toList(),
            const SizedBox(height: 20),
            Text(
              'Current Font Preview:',
              style: TextStyle(
                  fontSize: 18, fontFamily: themeProvider.currentFont),
            ),
            const SizedBox(height: 10),
            Text(
              'The quick brown fox jumps over the lazy dog.',
              style: TextStyle(
                  fontSize: 20, fontFamily: themeProvider.currentFont),
            ),
          ],
        ),
      ),
    );
  }
}
