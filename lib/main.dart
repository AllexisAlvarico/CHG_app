import 'package:flutter/material.dart';
import 'package:chg/home_screen.dart';
import 'headquarters.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'assets/images/Home/Logo.png',
        ),
        nextScreen: HeadquarterPage(),
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Color(0xFFE1DFD8),
      ),
    );
  }
}
