import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: const Color.fromARGB(255, 65, 65, 65), // Replaces 'background'
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade100,
    tertiary: Colors.grey.shade700,
  ),
);
