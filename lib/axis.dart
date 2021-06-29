import 'package:flutter/material.dart';
import 'package:chg/units_button.dart';

class AxisPage extends StatelessWidget {
  // german data
  final List<UnitData> germanData = [
    UnitData(imageLink: "assets/german_units/unit1.JPG"),
    UnitData(imageLink: "assets/german_units/unit2.JPG"),
    UnitData(imageLink: "assets/german_units/unit3.JPG"),
    UnitData(imageLink: "assets/german_units/unit4.JPG"),
  ];

  // japanese data
  final List<UnitData> japaneseData = [
    UnitData(imageLink: "assets/japanese_units/unit1.JPG"),
    UnitData(imageLink: "assets/japanese_units/unit2.JPG"),
  ];

  AxisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1DFDB), // cream color
      appBar: AppBar(
        title: Text("Axis"),
        backgroundColor: Color(0xFF303033), // black color
      ),
      body: SingleChildScrollView(
        // main scroller to scroll through all lists
        child: Center(
          child: Column(
            // column encapsulating lists with unit data
            children: [
              // german section
              Stack(
                // stack that holds the semi-transparent image with
                // the heading of the unit ontop of the image
                alignment: Alignment.center,
                children: [
                  Container(
                    child: Opacity(
                      opacity: 0.3,
                      child: Image.asset(
                        "assets/images/german_units.png",
                      ),
                    ),
                  ),
                  Text(
                    // section heading
                    "German Units",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                // spacing between unit heading and unit information
                height: 25,
              ),
              ListView.separated(
                // list that holds data from a given data
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return UnitsButton(unitData: germanData[index]);
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemCount: germanData.length,
              ),
              SizedBox(
                // spacing between unit heading and unit information
                height: 25,
              ),
              // japanese section
              Stack(
                // stack that holds the semi-transparent image with
                // the heading of the unit ontop of the image
                alignment: Alignment.center,
                children: [
                  Container(
                    child: Opacity(
                      opacity: 0.3,
                      child: Image.asset(
                        "assets/images/japanese_units.jpg",
                      ),
                    ),
                  ),
                  Text(
                    // section heading
                    "Japenese Units",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                // spacing between unit heading and unit information
                height: 25,
              ),
              ListView.separated(
                // list that holds data from a given data
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return UnitsButton(unitData: japaneseData[index]);
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemCount: japaneseData.length,
              ),
              SizedBox(
                // spacing to leave a space at the end of the page
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
