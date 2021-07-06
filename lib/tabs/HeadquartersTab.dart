import 'package:flutter/material.dart';

class HeadquartersTab extends StatelessWidget {
  const HeadquartersTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Headquarters code goes here',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }
}
