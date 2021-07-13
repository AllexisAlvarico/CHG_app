import 'package:flutter/material.dart';
import 'package:chg/screens/home_screen.dart';
import 'package:chg/screens/HQParent.dart';
import 'package:flutter/services.dart';
import 'screens/events.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'utilities/device.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Device.init();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.black,
        accentColor: Color(0xFFE1DFDB),
        backgroundColor: Color(0xFFE1DFD8),
        brightness: Brightness.dark,
      ),
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'assets/images/Home/Logo.png',
        ),
        nextScreen: HomePage(),
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Color(0xFFE1DFD8),
        splashIconSize: 250,
      ),
      routes: {
        'Home': (context) => HomePage(),
        'Events': (context) => EventsPage(),
        'Headquarters': (context) => TestScreen()
      },
    );
  }
}
