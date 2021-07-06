import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

createText(String text, TextStyle style, TextAlign position) {
  return SizedBox(
      child: Container(
          margin: const EdgeInsets.fromLTRB(spaceSize, 0.0, spaceSize, 0),
          child: Text(
            text,
            style: style,
            textAlign: position,
          )));
}

const double regularTextFontSize = 16.0;
const double headerTextFontSize = 26.0;
const double spaceSize = 10.0;
