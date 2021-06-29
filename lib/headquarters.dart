import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _launchDues = Uri(
    scheme: 'https',
    path:
        "www.google.com/url?q=https%3A%2F%2Fevents.membersolutions.com%2Fevent_register.asp%3Fcontent_id%3D80833&sa=D&sntz=1&usg=AFQjCNFZBXGJgT2mWJpr-X1ULMsv9ubpNA");
final Uri _launchGDrive = Uri(
    scheme: 'https',
    path:
        "drive.google.com/drive/u/0/folders/1G30PsYINn5NpBTS_IpiAssP8Ny8Gkoxz");

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset("assets/images/hq-picture.png"),
              const Divider(
                height: 5,
                thickness: 2,
              ),
              createText(
                  "Administration",
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  TextAlign.center),
              const Divider(
                height: 5,
                thickness: 2,
              ),
              createText("Board Meeting: Sunday, 26 July 2021",
                  TextStyle(fontSize: 16), TextAlign.center),
              createText("• Next Meeting: Open to CHG members and guests",
                  TextStyle(fontSize: 14), TextAlign.left),
              createText(
                  "• Location: This meeting will be held online via Discord. Contact your Unit Leader for information.",
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
              const Divider(
                height: 5,
                thickness: 2,
              ),
              createText(
                  "Member dues are payable the first of each year. Dues should be paid direct online or through your Unit Leader to the CHG. Individual Units may have their own unit fees on top of CHG dues.\n\n" +
                      "Only CHG members are allowed to attend events; but for new members we make accommodations by not collecting your 25 dollars fee until your second event. You will still need to pay that event's battle fee, which run between 25 dollars and 40 dollars.\n\n" +
                      "Returning members must be paid up on or before the first battle of each year. If not, CHG dues (or temporary dues) must be paid before they are able to participate in an event. Those members not paid current by the first battle will have their names listed as delinquent until which time they are paid. There is no prorating of existing or returning CHG membership dues.\n\n" +
                      "To pay your dues Online click the 'pay dues' icon below:",
                  TextStyle(fontSize: 14),
                  TextAlign.left),
              GestureDetector(
                  onTap: () => _launchURL(_launchDues.toString()),
                  child: ClipRRect(
                    child: Image.asset(
                      "assets/images/paydues.jpg",
                      height: 250.0,
                    ),
                  )),
              const Divider(
                height: 5,
                thickness: 2,
              ),
              createText(
                  "Paperwork",
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  TextAlign.center),
              const Divider(
                height: 5,
                thickness: 2,
              ),
              createText(
                  "Click the image to go our Drive\n",
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  TextAlign.center),
              GestureDetector(
                  onTap: () => _launchURL(_launchGDrive.toString()),
                  child: ClipRRect(
                    child: Image.asset(
                      "assets/images/Google_Drive_logo.png",
                      height: 100.0,
                    ),
                  )),
              const Divider(
                height: 30,
              ),
            ],
          ),
        ));
  }
}

void _launchURL(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

createText(String text, TextStyle style, TextAlign position) {
  return SizedBox(
      width: double.infinity,
      child: Container(
          margin: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0),
          child: Text(
            text,
            style: style,
            textAlign: position,
          )));
}
