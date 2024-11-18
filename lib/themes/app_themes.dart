import 'package:flutter/material.dart';

final ThemeData themeA = ThemeData(
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.blue[50],
  textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.blue)),
);

final ThemeData themeB = ThemeData(
  primarySwatch: Colors.green,
  scaffoldBackgroundColor: Colors.green[50],
  textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.green)),
);

final ThemeData themeC = ThemeData(
  primarySwatch: Colors.purple,
  scaffoldBackgroundColor: Colors.purple[50],
  textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.purple)),
);

const List<String> fontOptions = [
  'Roboto', // Regular, clean, modern
  'Lobster', // Calligraphy style
  'Merriweather', // Bold, serif style
];
