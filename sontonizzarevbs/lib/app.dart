import 'package:flutter/material.dart';
import 'package:sontonizzarevbs/presentation/screens/home_screen.dart';
import 'package:sontonizzarevbs/presentation/utils/sontonizzarevbs_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      theme: Sontonizzarevbs.sontonizzarevbsTheme,
    );
  }
}