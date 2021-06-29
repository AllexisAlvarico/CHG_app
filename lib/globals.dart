import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

createText(String text, TextStyle style, TextAlign position) {
  return SizedBox(
      width: double.infinity,
      child: Container(
          margin: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0),
          child: Text(
            text,
            style: style,
            textAlign: position,
          )));
}

const double regularTextFontSize = 16.0;
const double headerTextFontSize = 26.0;
