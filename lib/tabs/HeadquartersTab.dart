import 'package:CHG/screens/dues.dart';
import 'package:CHG/screens/headquarters.dart';
import 'package:CHG/screens/join.dart';
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
        backgroundColor: Color(0xFFE1DFD8),
        appBar: AppBar(
          title: Text("HQ"),
          backgroundColor: Theme.of(context).primaryColor,
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
        body: TabBarView(
          children: [
            HeadquarterPage(),
            JoinPage(),
            DuesPage(),
          ],
        ),
      ),
    );
  }
}

void _launchURL(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
