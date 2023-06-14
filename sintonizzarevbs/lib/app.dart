import 'package:flutter/material.dart';
import 'package:sintonizzarevbs/presentation/screens/home_screen.dart';
import 'package:sintonizzarevbs/presentation/screens/teste.dart';
import 'package:sintonizzarevbs/presentation/utils/sintonizzarevbs_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      theme: sintonizzarevbs.sintonizzarevbsTheme,
    );
  }
}