import 'package:flutter/material.dart';

const primaryColor = Color(0xfff82b10);
final themeData = ThemeData(
  dividerTheme: DividerThemeData(
    color: Colors.grey.withOpacity(0.1),
  ),
  scaffoldBackgroundColor: const Color(0xffeff1f3),
  primaryColor: primaryColor,
  colorScheme: (ColorScheme.fromSeed(seedColor: primaryColor)),
  textTheme: const TextTheme(
      titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
);
