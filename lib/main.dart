import 'package:CHG/screens/settings.dart';
import 'package:CHG/utilities/device.dart';
import 'package:flutter/material.dart';
import 'package:CHG/screens/home_screen.dart';
import 'package:CHG/screens/HQParent.dart';
import 'package:flutter/services.dart';
import 'screens/events.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'utilities/device.dart';
import 'package:CHG/globals.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Device.init();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.black,
        accentColor: Colors.white,
        backgroundColor: backgroundColor,
        brightness: Brightness.dark,
      ),
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'assets/images/Home/Logo.png',
        ),
        nextScreen: HomePage(),
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: backgroundColor,
        splashIconSize: 250,
      ),
      routes: {
        'Settings': (context) => SettingsPage(),
        'Home': (context) => HomePage(),
        'Events': (context) => EventsPage(),
        'Headquarters': (context) => TestScreen()
      },
    );
  }
}
