import 'package:chg/headquarters.dart';
import 'package:flutter/material.dart';
import 'package:chg/screens/home_screen.dart';
import 'package:chg/screens/test.dart';
import 'screens/events.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'headquarters.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          canvasColor: Colors.black,
          accentColor: Colors.amber,
          backgroundColor: Color(0xFF303033),
          brightness: Brightness.dark),
      initialRoute: 'home',
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'assets/images/Home/Logo.png',
        ),
        nextScreen: HeadquarterPage(),
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Color(0xFFE1DFD8),
      ),
      routes: {
        'home': (context) => HomePage(),
        'Events': (context) => EventsPage(),
        'Headquarters': (context) => TestScreen()
      },
    );
  }
}
