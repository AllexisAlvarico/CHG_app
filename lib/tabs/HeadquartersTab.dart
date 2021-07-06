import 'package:chg/screens/dues.dart';
import 'package:chg/screens/headquarters.dart';
import 'package:chg/screens/join.dart';
import 'package:chg/utilities/sideDrawer.dart';
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

class HeadquartersTab extends StatelessWidget {
  const HeadquartersTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xffe1dfdb),
        appBar: AppBar(
          title: Text("TestPage"),
          backgroundColor: Color(0xFF303033),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Home Base',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'Join',
                icon: Icon(Icons.group),
              ),
              Tab(
                text: 'Pay dues',
                icon: Icon(Icons.settings),
              ),
            ],
          ),
        ),
        drawer: SideDrawer(),
        body: TabBarView(
          children: [
            HeadquarterPage(),
            JoinPage(),
            Dues(),
          ],
        ),
      ),
    );
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
