import 'package:chg/utilities/sideDrawer.dart';
import 'package:chg/tabs/HeadquartersTab.dart';
import 'package:chg/tabs/AxisTab.dart';
import 'package:chg/tabs/AlliesTab.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int _index = 0;

  final List<Widget> _tabs = [HeadquartersTab(), AlliesTab(), AxisTab()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1DFD8),
      appBar: AppBar(
        title: Text("TestPage"),
        backgroundColor: Color(0xFF303033),
      ),
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
