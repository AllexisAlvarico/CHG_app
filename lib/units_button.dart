import 'package:chg/unit_contact.dart';
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
            : Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => UnitContactPage(
                          data: unitData,
                        )));
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
  // optional data can be stored in case if the unit doesn't have a website
  String? urlLink;
  String? name;
  String? leaderName;
  String? email;
  Widget? child;

  String imageLink;

  UnitData(
      {this.urlLink,
      this.name,
      this.leaderName,
      this.email,
      this.child,
      required this.imageLink});
}
