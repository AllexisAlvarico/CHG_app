import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import './utilities/device.dart';

createText(String text, TextStyle style, TextAlign position) {
  return SizedBox(
      child: Container(
          margin: EdgeInsets.fromLTRB(spaceSize, 0.0, spaceSize, 0),
          child: Text(
            text,
            style: style,
            textAlign: position,
          )));
}

double regularTextFontSize = Device.safeBlockVertical * 3;
double headerTextFontSize = Device.safeBlockVertical * 5;
double alertSize = Device.safeBlockVertical * 4;

double spaceSize = Device.safeBlockVertical * 2;

Color canvasColor = Colors.black;
Color accentColor = Color(0xFFE1DFDB);
Color backgroundColor = Color(0xFFE1DFDB);

setCanvasColor(Color newColor) {
  canvasColor = newColor;
}

setAccentColor(Color newColor) {
  accentColor = newColor;
}

setBackgrundColor(Color newColor) {
  backgroundColor = newColor;
}
