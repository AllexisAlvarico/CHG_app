import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'globals.dart';

final Uri _launchDues = Uri(
    scheme: 'https',
    path:
        "www.google.com/url?q=https%3A%2F%2Fevents.membersolutions.com%2Fevent_register.asp%3Fcontent_id%3D80833&sa=D&sntz=1&usg=AFQjCNFZBXGJgT2mWJpr-X1ULMsv9ubpNA");

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
      appBar: AppBar(
        automaticallyImplyLeading: true, // allows use of back button
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false)),
        title: Text(
          "Dues",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "Futura"),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Image(image: AssetImage("assets/images/dues.jpg")),
          Divider(height: 20.0, thickness: 21.0, color: Colors.grey[400]),
          createText(
              "Dues",
              TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              TextAlign.center),
          Divider(
            height: 7.5,
            thickness: 2,
          ),
          createText(
              "The California Historical Group is changing the way we" +
                  " collect annual dues.  Beginning in 2020 we will no" +
                  " longer be using PayPal.  All annual due payments" +
                  " will be collected through Member Solutions Inc (MSI)" +
                  " a third party membership & event management company." +
                  " To renew your CHG memberships or join the CHG you" +
                  " will need to fill out and submit the online form" +
                  " with payment. All major debit or credit card are" +
                  " accepted.  (To pay by check, please contact the" +
                  " Treasurer for details.)  The form will have an option" +
                  " for paying individual or family dues and space to" +
                  " select which unit each person who is paying dues belongs" +
                  " to.  Directions for those paying family dues will be" +
                  " provided on the form. For those members who are eligible" +
                  " for the Active Duty Military dues waiver, please contact" +
                  " the Treasurer at chgtreasurer@gmail.com",
              TextStyle(fontSize: 16),
              TextAlign.left),
          Divider(
            height: 15.0,
            color: Colors.transparent,
          ),
          createText(
              "Dues payments will NOT be accepted at events.",
              TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              TextAlign.center),
          Divider(
            height: 15.0,
            thickness: 2,
          ),
          GestureDetector(
              onTap: () => _launchURL(_launchDues.toString()),
              child: ClipRRect(
                child: Image.asset(
                  "assets/images/uncledues.png",
                  height: 250.0,
                ),
              )),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              createText(
                  "CHG dues are not required at your first event, but we ask you" +
                      "to complete and turn in a Prospective Member Form to your unit" +
                      " leader at your first event. Please note: battle fees are" +
                      " required at every event -- including your first one.",
                  TextStyle(fontSize: 16),
                  TextAlign.left),
              GestureDetector(
                  onTap: () => _launchURL(_launchRegister.toString()),
                  child: ClipRRect(
                    child: Image.asset(
                      "assets/images/events/EmbeddedImage.png",
                      height: 250.0,
                    ),
                  )),
            ],
          )),
          Divider(
            height: 15.0,
          ),
        ],
      ), // temp
    );
  }
}

void _launchURL(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
