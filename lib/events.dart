import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true, // allows use of back button
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false)),
        title: Text(
          "Events",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "Futura"),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Image(image: AssetImage("assets/images/events/events1.jpg")),
          Text(
            "CHG Events Calendar",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            "Note: All event dates are subject to change pending Covid-19 " +
                "restrictions as issued by local authorities to the event sites.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(height: 15.0),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "TACTICAL EVENTS\n2021\nAugust Storm at Cal City\n June 11 - 13\nSpring Awakening at Hill 559\nNovember",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "PUBLIC EVENTS\n2021\n\nPlanes of Fame\nAirshow in Chino\n 30-31 Oct",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          )),
          Divider(height: 30.0),
          Text(
            "Temporary Membership Rule",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Divider(height: 7.5),
          Text(
            "The CHG has changed its Bylaws governing Non-Members" +
                " and the Reciprocal Agreements it has with other reenactment" +
                " clubs: effective January 1st, 2014, the CHG will no longer" +
                " participate in any Reciprocity Agreements with other" +
                " reenactment organizations. Non-Members may still participate" +
                " at CHG events, but will be required to pay a Temporary" +
                " Membership (a 10 Dollar fee). This Temporary Membership gives" +
                " limited membership status for the event they are participating" +
                " in, thus satisfying insurance requirements and adequately" +
                " compensating the efforts of the CHG in hosting events." +
                " Please note that if you are not current on your CHG dues," +
                " you will need to pay either Temporary or Regular Membership" +
                " dues at the event. You MUST be a member in either status to" +
                " attend one of our events.",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Divider(height: 15.0),
          Text(
            "Different Event Types",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            "For the purpose of the CHG, we differentiate all" +
                "upcoming events as either Tactical or Living History. While" +
                " the CHG hosts private events, CHG units themselves choose to" +
                " participate in public events.  What follows are brief" +
                " descriptions of the different event types with examples of" +
                " each. See the calendar for notices and links to more" +
                " information of CHG hosted and participating events.",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ), // temp
    );
  }
}
