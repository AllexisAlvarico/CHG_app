import 'package:flutter/material.dart';

class HeadquarterPage extends StatefulWidget {
  @override
  _HeadquarterPageState createState() => _HeadquarterPageState();
}

class _HeadquarterPageState extends State<HeadquarterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffe1dfdb),
        appBar: AppBar(
          title: Text("Headquarters"),
          backgroundColor: Color(0xff303033),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset("assets/images/hq-picture.png"),
              const Divider(
                height: 5,
                thickness: 2,
              ),
              createText(
                  "Administration",
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  TextAlign.center),
              createText("Board Meeting: Sunday, 26 July 2021",
                  TextStyle(fontSize: 16), TextAlign.left),
              createText("• Next Meeting: Open to CHG members and guests",
                  TextStyle(fontSize: 14), TextAlign.left),
              createText(
                  "• Location: This meeting will be held online via Discord.\nContact your Unit Leader for information.",
                  TextStyle(fontSize: 14),
                  TextAlign.left),
              createText("• Time: 1000 - 1300", TextStyle(fontSize: 14),
                  TextAlign.left),
              const Divider(
                height: 5,
                thickness: 2,
              ),
              createText(
                  "CHG Membership Dues",
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  TextAlign.center),
              createText(
                  "Member dues are payable the first of each year. Dues should be paid direct online or through your Unit Leader to the CHG. Individual Units may have their own unit fees on top of CHG dues.\n\n" +
                      "Only CHG members are allowed to attend events; but for new members we make accommodations by not collecting your 25 dollars fee until your second event. You will still need to pay that event's battle fee, which run between 25 dollars and 40 dollars\n\n" +
                      "Returning members must be paid up on or before the first battle of each year. If not, CHG dues (or temporary dues) must be paid before they are able to participate in an event. Those members not paid current by the first battle will have their names listed as delinquent until which time they are paid. There is no prorating of existing or returning CHG membership dues.\n\n" +
                      "  Returning members must be paid up on or before the first battle of each year. If not, CHG dues (or temporary dues) must be paid before they are able to participate in an event. Those members not paid current by the first battle will have their names listed as delinquent until which time they are paid. There is no prorating of existing or returning CHG membership dues.\n\n",
                  TextStyle(fontSize: 14),
                  TextAlign.center),
              Image.asset("assets/images/paydues.jpg"),
              const Divider(
                height: 5,
                thickness: 2,
              ),
              createText(
                  "Paperworks",
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  TextAlign.center),
            ],
          ),
        ));
  }
}

createText(String text, TextStyle style, TextAlign position) {
  return Text(
    text,
    style: style,
    textAlign: position,
  );
}
