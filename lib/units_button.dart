import 'package:chg/about_us.dart';
import 'package:flutter/material.dart';
import 'package:chg/url_functions.dart';

// button with a clickable image representing the corresponding unit.
// used in the allies and axis pages to provide links to webpages of different
// units. if the url link is null, sends the user to the unit contacts page
class UnitsButton extends StatelessWidget {
  final UnitData unitData;

  const UnitsButton({Key? key, required this.unitData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        unitData.urlLink != null
            ? launchInBrowser(unitData.urlLink!)
            : Navigator.push(context,
                MaterialPageRoute(builder: (context) => AboutUsPage())); // temp
      },
      child: Card(
        child: Image.asset(
          unitData.imageLink,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

// representation of the data neccessasary for the units button widget
class UnitData {
  String? urlLink;
  String imageLink;

  UnitData({this.urlLink, required this.imageLink});
}
