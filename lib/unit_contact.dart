import 'package:chg/custom_icon_button.dart';
import 'package:chg/url_functions.dart';
import 'package:flutter/material.dart';
import 'package:chg/units_button.dart';

class UnitContactPage extends StatelessWidget {
  final UnitData data;

  UnitContactPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1DFDB), // cream color
      appBar: AppBar(
        title: Text("Unit Contact"),
        backgroundColor: Color(0xFF303033), // black color
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
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                )
              : Container(),
          Divider(
            // divider between the unit name and leader name
            thickness: 5,
          ),
          SizedBox(
            height: 15,
          ),
          // unit leader name or empty container if null
          data.leaderName != null
              ? Text(
                  data.leaderName!,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                )
              : Container(),
          // extra data that could be anything specific to each unit
          // e.g. facebook, phone number, etc. empty container on null
          data.child != null ? data.child! : Container(),
          SizedBox(
            // end of page or email spacing
            height: 50,
          ),
          // unit email or empty container if null
          data.email != null
              ? CustomIconButton(
                  onTap: () async {
                    launchInEmail(data.email!);
                  },
                  icon: Icon(
                    Icons.email_outlined,
                    color: Colors.black,
                  ),
                  label: Text("Email"),
                )
              : Container(),
        ],
      ),
    );
  }
}
