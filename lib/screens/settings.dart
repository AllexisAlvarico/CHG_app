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
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: appbarColor,
        automaticallyImplyLeading: true, // allows use of back button
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: textColor,
          ),
          onPressed: () => Navigator.pushReplacementNamed(
            context,
            'Home',
          ),
        ),
        title: Text(
          "Settings",
          style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontFamily: "Futura"),
        ),
      ),
      body: Column(
        children: [
          Divider(
            height: 15.0,
            color: Colors.transparent,
          ),
          createText(
              "Change Font Size",
              TextStyle(
                  fontSize: headerTextFontSize,
                  fontWeight: FontWeight.bold,
                  color: textColor),
              TextAlign.center),
          Slider(
            value: newFontSize,
            min: minFont,
            max: maxFont,
            divisions: 4,
            label: newFontSize.round().toString(),
            onChanged: (double value) {
              setState(() {
                setNewFontSize(value);
              });
            },
          ),
          Divider(
            height: 45.0,
            color: Colors.transparent,
          ),
          createText(
              "Pick Theme",
              TextStyle(
                  fontSize: headerTextFontSize,
                  fontWeight: FontWeight.bold,
                  color: textColor),
              TextAlign.center),
          Divider(
            height: 10.0,
            color: Colors.transparent,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  setNewTheme(Colors.black, Colors.grey[850]!, Colors.white);
                });
              },
              child: Text("Dark Mode")),
          Divider(
            height: 20.0,
            color: Colors.transparent,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  setNewTheme(Colors.grey[200]!, Colors.white, Colors.black);
                });
              },
              child: Text("Light Mode")),
          Divider(
            height: 20.0,
            color: Colors.transparent,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  setNewTheme(Colors.yellowAccent, Colors.yellow[400]!,
                      Colors.yellow[900]!);
                });
              },
              child: Text("Monke Mode")),
        ],
      ),
    );
  }
}
