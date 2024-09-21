import 'package:flutter/material.dart';

import 'features/auth/presentaion/views/login_view.dart';
import 'features/introduction/presentaion/views/introduction_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontFamily: "Nunito Sans",
            fontSize: 16,
            fontWeight: FontWeight.w300,
            // color: Color(0xfff3f3f3),
            height: 31 / 22,
          ), // For body text (default)
        ),
        colorScheme: ColorScheme.fromSeed(
          primary: const Color(0xFF004cff),
          seedColor: Colors.blue,
          surface: Colors.white,
        ),
      ),
      home: const LoginView(),
    );
  }
}
