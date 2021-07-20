import 'package:chg/globals.dart';
import 'package:chg/screens/dues.dart';
import 'package:chg/screens/headquarters.dart';
import 'package:chg/screens/join.dart';
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
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: Text(
            "HQ",
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontFamily: "Futura",
            ),
          ),
          backgroundColor: appbarColor,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: textColor,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          bottom: TabBar(
            indicatorColor: textColor,
            tabs: [
              Tab(
                child: Text(
                  'Home Base',
                  style: TextStyle(
                    color: textColor,
                  ),
                ),
                icon: Icon(
                  Icons.home,
                  color: textColor,
                ),
              ),
              Tab(
                child: Text(
                  'Join',
                  style: TextStyle(
                    color: textColor,
                  ),
                ),
                icon: Icon(Icons.group, color: textColor),
              ),
              Tab(
                child: Text(
                  'Pay dues',
                  style: TextStyle(
                    color: textColor,
                  ),
                ),
                icon: Icon(Icons.settings, color: textColor),
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
