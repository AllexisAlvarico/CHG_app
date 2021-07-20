import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../globals.dart';
import '../utilities/device.dart';

final Uri _launchDues =
    Uri(scheme: 'https', path: "www.chgww2.net/headquarters/dues");

final Uri _launchRegister = Uri(
  scheme: 'https',
  path: 'www.drive.google.com/open?id=1mNnCymrlD6ffg_8vCr7Vu8FjmWeUcJ9C',
);

class DuesPage extends StatefulWidget {
  @override
  _DuesPageState createState() => _DuesPageState();
}

class _DuesPageState extends State<DuesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: <Widget>[
          Divider(height: spaceSize),
          createText(
            "Dues",
            TextStyle(
                fontSize: headerTextFontSize,
                fontWeight: FontWeight.bold,
                color: textColor),
            TextAlign.center,
          ),
          Divider(height: spaceSize),
          createText(
            "The California Historical Group is changing the way we" +
                " collect annual dues.  Beginning in 2020 we will no" +
                " longer be using PayPal.\n\nAll annual due payments" +
                " will be collected through Member Solutions Inc (MSI)" +
                " a third party membership & event management company." +
                " To renew your CHG memberships or join the CHG you" +
                " will need to fill out and submit the online form" +
                " with payment. All major debit or credit card are" +
                " accepted.  (To pay by check, please contact the" +
                " Treasurer for details.)\n\nThe form will have an option" +
                " for paying individual or family dues and space to" +
                " select which unit each person who is paying dues belongs" +
                " to.\n\nDirections for those paying family dues will be" +
                " provided on the form. For those members who are eligible" +
                " for the Active Duty Military dues waiver, please contact" +
                " the Treasurer at chgtreasurer@gmail.com",
            TextStyle(fontSize: regularTextFontSize, color: textColor),
            TextAlign.left,
          ),
          Divider(
            height: spaceSize,
            color: Colors.transparent,
          ),
          createText(
            "Dues payments will NOT be accepted at events.",
            TextStyle(
                fontSize: alertSize,
                fontWeight: FontWeight.bold,
                color: textColor),
            TextAlign.center,
          ),
          Divider(
            height: spaceSize,
            color: Colors.transparent,
          ),
          GestureDetector(
              onTap: () => _launchURL(_launchDues.toString()),
              child: ClipRRect(
                child: Image.asset(
                  "assets/images/uncledues.jpg",
                  height: Device.safeBlockVertical * 50,
                ),
              )),
          Divider(
            height: spaceSize,
          ),
          Container(
            color: secondaryBackgroundColor,
            child: Column(
              children: [
                Divider(
                  height: spaceSize,
                ),
                createText(
                  "New Members",
                  TextStyle(
                      fontSize: headerTextFontSize,
                      fontWeight: FontWeight.bold,
                      color: textColor),
                  TextAlign.center,
                ),
                createText(
                  "CHG dues are not required at your first event, but we ask you" +
                      " to complete and turn in a Prospective Member Form to your unit" +
                      " leader at your first event.\n\nPlease note: battle fees are" +
                      " required at every event -- including your first one.",
                  TextStyle(fontSize: regularTextFontSize, color: textColor),
                  TextAlign.left,
                ),
                Divider(
                  height: spaceSize,
                  color: Colors.transparent,
                ),
                GestureDetector(
                    onTap: () => _launchURL(_launchRegister.toString()),
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/images/events/EmbeddedImage.png",
                        height: Device.safeBlockVertical * 50,
                      ),
                    )),
                Divider(
                  height: spaceSize,
                  color: Colors.transparent,
                ),
                createText(
                  "Prospective Member Form",
                  TextStyle(
                      fontSize: regularTextFontSize,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: textColor),
                  TextAlign.center,
                ),
                Divider(
                  height: spaceSize,
                  color: Colors.transparent,
                ),
              ],
            ),
          )
        ],
      ), // temp
    );
  }
}

void _launchURL(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
