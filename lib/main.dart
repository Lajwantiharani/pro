import 'package:flutter/material.dart';
import 'package:pro/themes/theme_providers.dart';
import 'package:provider/provider.dart';
import 'package:pro/auth/login_or_register.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const LoginOrRegister(),
          theme: themeProvider.themeData,
        );
      },
    );
  }
}
