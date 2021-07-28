import 'package:CHG/globals.dart';
import 'package:CHG/url_functions.dart';
import 'package:CHG/utilities/device.dart';
import 'package:flutter/material.dart';
import 'package:CHG/units_button.dart';

class AxisPage extends StatelessWidget {
  // german data
  final List<UnitData> germanData = [
    UnitData(
        imageLink: "assets/german_units/unit1.JPG",
        urlLink: "http://www.12hj.com/"),
    UnitData(
        imageLink: "assets/german_units/unit2.JPG",
        name: "2nd Fallschirmjäger",
        leaderName: "Steve Woodward, unit leader: (619) 847-0263",
        email: "rykersdad@hotmail.com"),
    UnitData(
        imageLink: "assets/german_units/unit3.JPG",
        urlLink: "http://www.21stpanzerdivision.com/"),
    UnitData(
        imageLink: "assets/german_units/unit4.JPG",
        name: "98th Gebirgsjäger",
        leaderName: "Ludwig Prucker, unit leader",
        email: "GJR98@yahoo.com",
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Text(
            "Call: Otto Steiner (951) 255-2509",
            style: TextStyle(
              fontSize: regularTextFontSize,
              color: textColor,
            ),
            textAlign: TextAlign.center,
          ),
        )),
  ];

  // japanese data
  final List<UnitData> japaneseData = [
    UnitData(
        imageLink: "assets/japanese_units/unit1.JPG",
        name: "2nd Sendai",
        leaderName: "Steve Woodward, unit leader: (619) 847-0263",
        email: "rykersdad@hotmail.com",
        child: TextButton(
          onPressed: () async {
            launchInBrowser(
                "http://www.google.com/url?q=http%3A%2F%2Fgroups.yahoo.com%2Fgroup%2F2ndSendai%2F&sa=D&sntz=1&usg=AFQjCNFKqkEdmTZhojsxt6aaW13ShzFjbw");
          },
          child: Text("Yahoo Chat Group"),
        )),
    UnitData(
        imageLink: "assets/japanese_units/unit2.JPG",
        name: "Hasegawa Shoutai",
        leaderName: "Ellie Chang, Unit Leader",
        email: "hasegawashoutai@gmail.com",
        child: TextButton(
          onPressed: () async {
            launchInBrowser("https://www.facebook.com/HasegawaShoutai/");
          },
          child: Text("Facebook Group"),
        )),
  ];

  AxisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
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
                  createText(
                    // section heading
                    "German Units",
                    TextStyle(
                      fontSize: headerTextFontSize,
                      color: textColor,
                    ),
                    TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                // spacing between unit heading and unit information
                height: Device.safeBlockVertical * 5,
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
                height: Device.safeBlockVertical * 5,
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
                  createText(
                    // section heading
                    "Japanese Units",
                    TextStyle(
                      fontSize: headerTextFontSize,
                      color: textColor,
                    ),
                    TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                // spacing between unit heading and unit information
                height: Device.safeBlockVertical * 5,
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
                height: Device.safeBlockVertical * 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
