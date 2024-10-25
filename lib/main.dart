import 'package:flutter/material.dart';
import 'package:pro/models/restaurant.dart';
import 'package:pro/themes/theme_providers.dart';
import 'package:provider/provider.dart';
import 'package:pro/auth/login_or_register.dart';

void main() {
  runApp(
   MultiProvider(providers: [
    ChangeNotifierProvider(create: (context)=>ThemeProvider()),


    ChangeNotifierProvider(create: (context)=>Restaurant()),
   ],
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
