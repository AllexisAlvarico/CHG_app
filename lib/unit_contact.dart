import 'package:chg/custom_icon_button.dart';
import 'package:chg/globals.dart';
import 'package:chg/url_functions.dart';
import 'package:chg/utilities/device.dart';
import 'package:flutter/material.dart';
import 'package:chg/units_button.dart';

class UnitContactPage extends StatelessWidget {
  final UnitData data;

  UnitContactPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          "Unit Contact",
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontFamily: "Futura",
          ),
        ),
        backgroundColor: appbarColor,
        automaticallyImplyLeading: true, // allows use of back button
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: textColor,
            ),
            onPressed: () => Navigator.pop(context, false)),
      ),
      body: Column(
        children: [
          // image of unit
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 25,
            ),
            child: Image.asset(data.imageLink),
          ),
          // unit title or empty container if null
          data.name != null
              ? Text(
                  data.name!,
                  style: TextStyle(
                    fontSize: headerTextFontSize,
                    color: textColor,
                  ),
                  textAlign: TextAlign.center,
                )
              : Container(),
          Divider(
            // divider between the unit name and leader name
            thickness: 5,
            color: secondaryBackgroundColor,
          ),
          SizedBox(
            height: Device.safeBlockVertical * 2.5,
          ),
          // unit leader name or empty container if null
          data.leaderName != null
              ? Text(
                  data.leaderName!,
                  style: TextStyle(
                    fontSize: regularTextFontSize,
                    color: textColor,
                  ),
                  textAlign: TextAlign.center,
                )
              : Container(),
          // extra data that could be anything specific to each unit
          // e.g. facebook, phone number, etc. empty container on null
          data.child != null ? data.child! : Container(),
          SizedBox(
            // end of page or email spacing
            height: Device.safeBlockVertical * 8,
          ),
          // unit email or empty container if null
          data.email != null
              ? CustomIconButton(
                  onTap: () async {
                    launchInEmail(data.email!);
                  },
                  icon: Icon(
                    Icons.email_outlined,
                    color: textColor,
                  ),
                  label: Text(
                    "Email",
                    style: TextStyle(
                      color: textColor,
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
