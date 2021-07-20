import 'package:flutter/material.dart';
import 'package:chg/globals.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: [
          createText(
              "Change Font Size",
              TextStyle(
                  fontSize: headerTextFontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              TextAlign.center),
          Slider(
            value: newFontSize,
            min: minFont,
            max: maxFont,
            divisions: 6,
            label: newFontSize.round().toString(),
            onChanged: (double value) {
              setState(() {
                setNewFontSize(value);
              });
            },
          ),
          Text("Color theme here"),
        ],
      ),
    );
  }
}
