import 'package:flutter/material.dart';

class Dues extends StatelessWidget {
  const Dues({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(16),
      child: Center(
        child: Text(
          'Navigation in Flutter is very easy',
          style: TextStyle(fontSize: 48),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
