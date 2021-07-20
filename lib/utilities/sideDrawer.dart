import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              // This is a flutter premade widget
              UserAccountsDrawerHeader(
                accountEmail: Text(''),
                accountName: Text(''),
                otherAccountsPictures: [Icon(Icons.home)],
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Home/Home.png'),
                ),
              ),
              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
                onTap: () => Navigator.pushNamed(
                  context,
                  'Settings',
                ),
              ),
              ListTile(
                title: Text('Events'),
                leading: Icon(Icons.event),
                onTap: () => Navigator.pushNamed(
                  context,
                  'Events',
                ),
              ),
              ListTile(
                title: Text('Headquarters'),
                leading: Icon(Icons.hotel),
                onTap: () => Navigator.pushNamed(
                  context,
                  'Headquarters',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
