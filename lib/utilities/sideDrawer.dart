import 'package:CHG/globals.dart';
import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Drawer(
          child: Container(
            color: backgroundColor,
            child: ListView(
              children: [
                // This is a flutter premade widget
                UserAccountsDrawerHeader(
                  accountEmail: Text(''),
                  accountName: Text(''),
                  otherAccountsPictures: [
                    Icon(
                      Icons.home,
                      color: textColor,
                    )
                  ],
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Home/Home.png'),
                  ),
                  decoration: BoxDecoration(
                    color: appbarColor,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      color: textColor,
                    ),
                  ),
                  leading: Icon(Icons.settings, color: textColor),
                  onTap: () => Navigator.pushReplacementNamed(
                    context,
                    'Settings',
                  ),
                ),
                ListTile(
                  title: Text(
                    'Events',
                    style: TextStyle(
                      color: textColor,
                    ),
                  ),
                  leading: Icon(Icons.event, color: textColor),
                  onTap: () => Navigator.pushNamed(
                    context,
                    'Events',
                  ),
                ),
                ListTile(
                  title: Text(
                    'Headquarters',
                    style: TextStyle(
                      color: textColor,
                    ),
                  ),
                  leading: Icon(Icons.hotel, color: textColor),
                  onTap: () => Navigator.pushNamed(
                    context,
                    'Headquarters',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
