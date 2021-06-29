import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class JoinPage extends StatefulWidget {
  @override
  _JoinPageState createState() => _JoinPageState();
}

class _JoinPageState extends State<JoinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true, // allows use of back button
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false)),
        title: Text(
          "Join",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "Futura"),
        ),
      ),
      body: ListView(
        children: [
          Image(image: AssetImage("assets/images/Join/JoinHeader.jpg")),
          Container(
            child: Column(
              children: [
                Text(
                  "\nBECOMING A WWII REENACTOR",
                  style: TextStyle(fontSize: 26),
                ),
                Text(
                  "Our members range in age from 15 to 70 and come in all sorts of shapes and sizes, but most are in good enough shape to participate in events." +
                      " Physical participation is the equivalent of light hiking all day." +
                      " CHG units portray many combat units of WWII, varying from foot soldier to airborne trooper to armored crewman and more." +
                      " restrictions as issued by local authorities to the event sites.\n"
                          "Men and women participate in the CHG; and while generally for historical accuracy most units do not have women in combat/soldier positions," +
                      " Red Army units do allow women in combat. We do have an American field hospital, which -- when combined with the Red Army --" +
                      "affords women the opportunity to participate in all of our events.\n"
                          "Events are mainly 'tactical reenactments' held variously on public or private land." +
                      " There are anywhere from six to eight a year, ranging all seasons and in all terrain." +
                      " There are also public service events, such as various 4th of July parades and air shows." +
                      " Finally, we participate in Living History events, at which reenactors from various organizations with a variety of historical focuses can be encountered.\n" +
                      "Many of our battles are focused on WWII in Europe, which saw American and Commonwealth Allied forces battling against German combatants." +
                      " There are also Pacific, Mediterranean, and Eastern Front battles as well." +
                      " Each year has seen a vast dual-front engagement in which Russian and Western Allied forces fight the Germans in the last days of the Reich.\n" +
                      "Most units have no membership fees, and have members from throughout California." +
                      " The cost to join the CHG is 25 Dollars a year, and individual events cost from 25-40 Dollars.\n"
                          "Carefully examine each unit through their websites, phone numbers, and e-mails." +
                      " If you find a unit which holds interest to you, feel free to contact the recruiting officer for that unit and inquire" +
                      " about things such as unit authenticity standards, accepted vendors, and requirement for membership within that unit.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey[400],
            child: Column(),
          )
        ],
      ),
    );
  }
}
