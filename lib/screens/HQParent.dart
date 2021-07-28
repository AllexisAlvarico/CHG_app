import 'package:CHG/globals.dart';
import 'package:CHG/utilities/sideDrawer.dart';
import 'package:CHG/tabs/HeadquartersTab.dart';
import 'package:CHG/tabs/AxisPage.dart';
import 'package:CHG/tabs/AlliesPage.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int _index = 0;

  final List<Widget> _tabs = [HeadquartersTab(), AlliesPage(), AxisPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      drawer: SideDrawer(),
      body: _tabs[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (index) => setState(() {
          _index = index;
        }),
        backgroundColor: appbarColor,
        items: [
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.camera,
                color: textColor,
              ),
              // ignore: deprecated_member_use
              title: Text("HQ", style: TextStyle(color: textColor))),
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.groups,
                color: textColor,
              ),
              // ignore: deprecated_member_use
              title: Text("Allies", style: TextStyle(color: textColor))),
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.group,
                color: textColor,
              ),
              // ignore: deprecated_member_use
              title: Text("Axis", style: TextStyle(color: textColor))),
        ],
      ),
    );
  }
}
