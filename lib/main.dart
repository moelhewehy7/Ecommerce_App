import 'package:flutter/material.dart';

import 'package:flutter_application2/features/introduction/presentaion/views/introduction_view.dart';

import 'features/auth/presentaion/views/widgets/email_verify.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            onTertiary: Colors.blue,
            onSecondary: Colors.black,
            secondary: Colors.white,
            seedColor: Colors.blue,
            brightness: Brightness.dark),
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            secondary: const Color.fromARGB(255, 0, 0, 0),
            surface: Colors.white,
            primary: const Color(0xFF004cff),
            seedColor: Colors.blue,
            onTertiary: Colors.blue),
      ),
      home: const EmailVerify(),
    );
  }
}
