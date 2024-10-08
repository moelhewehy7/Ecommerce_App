import 'package:flutter/material.dart';
import 'features/bottom_navigation_bar.dart';

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
            surfaceBright: Colors.white,
            secondary: const Color(0xFF000000),
            primary: const Color(0xFF004cff),
            seedColor: Colors.blue,
            onTertiary: Colors.blue),
      ),
      home: const BottomNavigationBarMenu(),
    );
  }
}
