import 'package:CHG/screens/dues.dart';
import 'package:CHG/screens/headquarters.dart';
import 'package:CHG/screens/join.dart';
import 'package:flutter/material.dart';

class HeadquartersTab extends StatelessWidget {
  const HeadquartersTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFFE1DFD8),
        appBar: AppBar(
          title: Text("HQ"),
          backgroundColor: Theme.of(context).primaryColor,
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Home Base',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'Join',
                icon: Icon(Icons.group),
              ),
              Tab(
                text: 'Pay dues',
                icon: Icon(Icons.settings),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HeadquarterPage(),
            JoinPage(),
            DuesPage(),
          ],
        ),
      ),
    );
  }
}
