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

double newFontSize = 4;
double maxFont = 7;
double minFont = 3;

double regularTextFontSize = Device.safeBlockVertical * newFontSize;
double headerTextFontSize = Device.safeBlockVertical * (newFontSize + 2);
double alertSize = Device.safeBlockVertical * (newFontSize + 1);

double spaceSize = Device.safeBlockVertical * 2;

Color appbarColor = Colors.black;
Color backgroundColor = Colors.grey[850]!;
Color secondaryBackgroundColor = Colors.grey[700]!;
Color textColor = Colors.white;

setNewTheme(Color canvas, Color appbar, Color text, Color secondBackground) {
  setAppBarColor(canvas);
  setBackgroundColor(appbar);
  setTextColor(text);
  setSecondaryBackgroundColor(secondBackground);
}

setAppBarColor(Color newColor) {
  appbarColor = newColor;
}

setBackgroundColor(Color newColor) {
  backgroundColor = newColor;
}

setSecondaryBackgroundColor(Color newColor) {
  secondaryBackgroundColor = newColor;
}

setTextColor(Color newColor) {
  textColor = newColor;
}

setNewFontSize(double fontSize) {
  newFontSize = fontSize;

  regularTextFontSize = Device.safeBlockVertical * newFontSize;
  headerTextFontSize = Device.safeBlockVertical * (newFontSize + 2);
  alertSize = Device.safeBlockVertical * (newFontSize + 1);
}
