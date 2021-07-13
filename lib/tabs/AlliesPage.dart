import 'package:flutter/material.dart';
import 'package:CHG/units_button.dart';

class AlliesPage extends StatelessWidget {
  // american data
  final List<UnitData> americanData = [
    UnitData(
        imageLink: "assets/american_units/unit1.jpg",
        urlLink: "https://sites.google.com/site/2ndarmoredchg/"),
    UnitData(
        imageLink: "assets/american_units/unit2.JPG",
        urlLink: "https://sites.google.com/site/chg35th/"),
    UnitData(
        imageLink: "assets/american_units/unit3.JPG",
        urlLink: "https://www.2ndidmanchus.org/"),
    UnitData(
        imageLink: "assets/american_units/unit4.JPG",
        name: "45th Field Hospital",
        email: "SignorinaL@aol.com"),
    UnitData(
        imageLink: "assets/american_units/unit5.JPG",
        urlLink: "https://www.506thrps.com/"),
    UnitData(
        imageLink: "assets/american_units/unit6.JPG",
        urlLink:
            "https://anthony4795.wixsite.com/3rdplatoon?fbclid=IwAR2b1rLtbXLQ3Gnsp8v3FKlwpbBb9hNzRzDk3WbvQcxyPxmkhe8QAtMr0Ss"),
  ];

  // british data
  final List<UnitData> britishData = [
    UnitData(
        imageLink: "assets/british_units/unit1.JPG",
        urlLink: "http://www.lrdg.org/"),
    UnitData(
        imageLink: "assets/british_units/unit2.JPG",
        urlLink: "http://www.1stairborne.com/"),
  ];

  // red army data
  final List<UnitData> redArmyData = [
    UnitData(
        imageLink: "assets/red_army_units/unit1.JPG",
        urlLink: "http://150thrifledvrkkareenacted.homestead.com/index.html"),
    UnitData(
      imageLink: "assets/red_army_units/unit2.JPG",
      urlLink:
          "http://www.70thguards.com/", // this website is not active anymore
    )
  ];

  AlliesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1DFDB), // cream color
      body: SingleChildScrollView(
        // main scroller to scroll through all lists
        child: Center(
          child: Column(
            // column encapsulating lists with unit data
            children: [
              // american section
              Stack(
                // stack that holds the semi-transparent image with
                // the heading of the unit ontop of the image
                alignment: Alignment.center,
                children: [
                  Container(
                    child: Opacity(
                      opacity: 0.3,
                      child: Image.asset(
                        "assets/images/american_units.png",
                      ),
                    ),
                  ),
                  Text(
                    // section heading
                    "American Units",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
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
                  return UnitsButton(unitData: americanData[index]);
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemCount: americanData.length,
              ),
              SizedBox(
                // spacing between new unit heading and previous unit information
                height: 25,
              ),
              // british section
              Stack(
                // stack that holds the semi-transparent image with
                // the heading of the unit ontop of the image
                alignment: Alignment.center,
                children: [
                  Container(
                    child: Opacity(
                      opacity: 0.3,
                      child: Image.asset(
                        "assets/images/british_units.png",
                      ),
                    ),
                  ),
                  Text(
                    // section heading
                    "British & Commonwealth Units",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
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
                  return UnitsButton(unitData: britishData[index]);
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemCount: britishData.length,
              ),
              SizedBox(
                // spacing between new unit heading and previous unit information
                height: 25,
              ),
              // red army section
              Stack(
                // stack that holds the semi-transparent image with
                // the heading of the unit ontop of the image
                alignment: Alignment.center,
                children: [
                  Container(
                    child: Opacity(
                      opacity: 0.3,
                      child: Image.asset(
                        "assets/images/red_army_units.jpg",
                      ),
                    ),
                  ),
                  Text(
                    // section heading
                    "Red Army Units",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
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
                  return UnitsButton(unitData: redArmyData[index]);
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemCount: redArmyData.length,
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
