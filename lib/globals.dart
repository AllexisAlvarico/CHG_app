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

double newFontSize = 3;
double maxFont = 7;
double minFont = 1;

double regularTextFontSize = Device.safeBlockVertical * newFontSize;
double headerTextFontSize = Device.safeBlockVertical * (newFontSize + 2);
double alertSize = Device.safeBlockVertical * (newFontSize + 1);

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

setNewFontSize(double fontSize) {
  newFontSize = fontSize;

  regularTextFontSize = Device.safeBlockVertical * newFontSize;
  headerTextFontSize = Device.safeBlockVertical * (newFontSize + 2);
  alertSize = Device.safeBlockVertical * (newFontSize + 1);
}
