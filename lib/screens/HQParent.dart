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
      backgroundColor: Color(0xFFE1DFD8),
      drawer: SideDrawer(),
      body: _tabs[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (index) => setState(() {
          _index = index;
        }),
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'HQ',
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'Allies',
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Axis',
          ),
        ],
      ),
    );
  }
}
