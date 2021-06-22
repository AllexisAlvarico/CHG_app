import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    var cardTextStyle = TextStyle(
        fontFamily: "Montserrat Regular", fontSize: 14, color: Colors.black);

    return Scaffold(
      backgroundColor: Color(0xFFE1DFD8),
      appBar: AppBar(
        title: Text("HomePage"),
        backgroundColor: Color(0xFF303033),
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child: Icon(
            Icons.menu, // add custom icons also
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.event),
            label: 'Events',
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.work), label: 'Headquarters'),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person), label: 'About us'),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            // This is our home screen logo widget
            height: size.height * .6,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/Home/Header.png'),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 20.0, left: 30.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 64,
                      backgroundImage: AssetImage(
                        'assets/images/Home/Logo.png',
                      ),
                    ),
                    Expanded(
                      child: new Column(
                        children: <Widget>[
                          new Text(
                            "California Historical \n Group",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                padding: EdgeInsets.only(
                  top: 45,
                ),
                primary: false,
                crossAxisCount: 2,
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    elevation: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset(
                          'assets/SVG/calendar.svg',
                          height: 128,
                        ),
                        Text(
                          'Events',
                          style: cardTextStyle,
                        )
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    elevation: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset(
                          'assets/SVG/military-base.svg',
                          height: 128,
                        ),
                        Text(
                          'Headquarters',
                          style: cardTextStyle,
                        )
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    elevation: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset(
                          'assets/SVG/group.svg',
                          height: 128,
                        ),
                        Text(
                          'About us',
                          style: cardTextStyle,
                        )
                      ],
                    ),
                  ),
                ],
              )),
            ],
          ),
        ],
      ),
    );
  }
}
