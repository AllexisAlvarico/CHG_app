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
              UserAccountsDrawerHeader(
                accountEmail: Text('test@gmail.com'),
                accountName: Text('Test'),
                otherAccountsPictures: [Icon(Icons.home), Icon(Icons.ac_unit)],
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://i7.pngguru.com/preview/633/903/703/hey-you-pikachu-pokemon-go-ash-ketchum-pikachu.jpg'),
                ),
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: () => Navigator.pushReplacementNamed(
                  context,
                  'home',
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
