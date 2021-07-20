import 'package:chg/globals.dart';
import 'package:chg/utilities/sideDrawer.dart';
import 'package:chg/tabs/HeadquartersTab.dart';
import 'package:chg/tabs/AxisPage.dart';
import 'package:chg/tabs/AlliesPage.dart';
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
            label: 'HQ',
          ),
          new BottomNavigationBarItem(
            icon: Icon(
              Icons.groups,
              color: textColor,
            ),
            label: 'Allies',
          ),
          new BottomNavigationBarItem(
            icon: Icon(
              Icons.group,
              color: textColor,
            ),
            label: 'Axis',
          ),
        ],
      ),
    );
  }
}
