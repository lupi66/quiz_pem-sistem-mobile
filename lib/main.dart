import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const PetCareApp());
}

class PetCareApp extends StatelessWidget {
  const PetCareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PetCare',

      theme: ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.green,
  ),
  useMaterial3: true,
  fontFamily: 'Roboto',

  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
    centerTitle: true,
  ),
),

      home: const HomeScreen(),
    );
  }
}