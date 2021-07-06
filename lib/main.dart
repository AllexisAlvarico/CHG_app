import 'package:flutter/material.dart';
import 'package:chg/screens/home_screen.dart';
import 'package:chg/screens/HQParent.dart';
import 'screens/events.dart';
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
      theme: ThemeData(
        canvasColor: Colors.black,
        accentColor: Color(0xFFE1DFDB),
        backgroundColor: Color(0xFFE1DFD8),
        brightness: Brightness.dark,
      ),
      initialRoute: 'Home',
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'assets/images/Home/Logo.png',
        ),
        nextScreen: DuesPage(),
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Color(0xFFE1DFD8),
      ),
      routes: {
        'Home': (context) => HomePage(),
        'Events': (context) => EventsPage(),
        'Headquarters': (context) => TestScreen()
      },
    );
  }
}
