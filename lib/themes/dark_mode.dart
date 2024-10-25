import 'package:flutter/material.dart';


ThemeData darkmode = ThemeData(
  colorScheme: ColorScheme.dark(
    surface: const Color.fromARGB(255, 10, 9, 9), // Replaces 'background'
    primary: Colors.grey.shade500,
    secondary: const Color.fromARGB(255, 10, 8, 8),
    tertiary: Colors.grey.shade700,
    inversePrimary: Colors.grey.shade700,
  ),
);