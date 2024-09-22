import 'package:flutter/material.dart';
import 'package:flutter_application2/features/introduction/presentaion/views/introduction_view.dart';

import 'features/auth/presentaion/views/login_view.dart';

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
            onSecondary: Colors.black,
            secondary: Colors.white,
            seedColor: Colors.blue,
            brightness: Brightness.dark),
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          secondary: const Color(0xff202020),
          surface: Colors.white,
          primary: const Color(0xFF004cff),
          seedColor: Colors.blue,
        ),
      ),
      home: const IntroductionView(),
    );
  }
}
