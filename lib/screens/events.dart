import 'package:chg/sideDrawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _launchGDrive = Uri(
    scheme: 'https',
    path: "www.drive.google.com/file/d/1KmKZYq7qKu7qPfU0JUtJzMQDDXzMmua3/view");

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Events",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "Futura"),
        ),
      ),
      drawer: SideDrawer(),
      body: ListView(
        children: <Widget>[
          Image(image: AssetImage("assets/images/events/events1.jpg")),
          Container(
            color: Colors.grey[400],
            child: Column(
              children: [
                Text(
                  "\nCHG Events Calendar",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Note: All event dates are subject to change pending Covid-19 " +
                      "restrictions as issued by local authorities to the event sites.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Divider(height: 15.0),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "TACTICAL EVENTS\n2021\nAugust Storm at Cal City\n June 11 - 13\nSpring Awakening at Hill 559\nNovember",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "PUBLIC EVENTS\n2021\n\nPlanes of Fame\nAirshow in Chino\n 30-31 Oct",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
              ],
            ),
          ),
          Divider(height: 20.0, thickness: 21.0, color: Colors.grey[400]),
          Image(image: AssetImage("assets/images/events/events2.jpg")),
          Divider(
            height: 10.0,
          ),
          createText(
              "Temporary Membership Rule",
              TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              TextAlign.center),
          Divider(
            height: 7.5,
            thickness: 2,
          ),
          createText(
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
                  "\n\nPlease note that if you are not current on your CHG dues," +
                  " you will need to pay either Temporary or Regular Membership" +
                  " dues at the event.",
              TextStyle(fontSize: 16),
              TextAlign.left),
          Divider(
            height: 15.0,
            color: Colors.transparent,
          ),
          createText(
              "You MUST be a member in either status to" +
                  " attend one of our events.",
              TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              TextAlign.center),
          Divider(
            height: 15.0,
            thickness: 2,
          ),
          createText(
              "CHG Photography Policy",
              TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              TextAlign.center),
          Divider(height: 15.0, thickness: 2),
          createText(
              "Taking digital photographs and video is reserved for paid " +
                  "CHG Members. The amount and nature should be such that it does" +
                  " not distract from the overall period-correct immersive nature" +
                  " of the event.The CHG does not allow members of the public to" +
                  " come to our private tactical battle events. The CHG does" +
                  " accommodate Veterans, and Film Students; but only after a" +
                  " formal request has been made in person to the board to the" +
                  " nature of their request. If you are interesting in attending" +
                  " one of our events your best option is to join one of our" +
                  " member units. Regardless who attends an event they must be in" +
                  " period clothing, with grooming and overall appearance meeting" +
                  " standards of the time period.",
              TextStyle(fontSize: 16),
              TextAlign.left),
          Divider(
            height: 15.0,
            thickness: 2,
          ),
          createText(
              "Different Event Types",
              TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              TextAlign.center),
          Divider(
            height: 15.0,
            thickness: 2,
          ),
          createText(
              "For the purpose of the CHG, we differentiate all" +
                  " upcoming events as either Tactical or Living History. While" +
                  " the CHG hosts private events, CHG units themselves choose to" +
                  " participate in public events.  What follows are brief" +
                  " descriptions of the different event types with examples of" +
                  " each. See the calendar for notices and links to more" +
                  " information of CHG hosted and participating events.",
              TextStyle(fontSize: 16),
              TextAlign.left),
          Divider(
            height: 15.0,
            thickness: 2,
          ),
          createText(
              "Private Tactical Battle",
              TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              TextAlign.center),
          Divider(
            height: 15.0,
            thickness: 2,
          ),
          createText(
              "Tactical or mock battles are designed to immerse the" +
                  " individual in the sights and sounds of World War" +
                  " II combat. The purpose is not to recreate war but" +
                  " to give the individual the opportunity to have a" +
                  " glimpse at what the average combat soldier may have" +
                  " experienced. This is all done with real and reproduction" +
                  " gear, clothing, and weapons.\n\nThe California Historical" +
                  " Group stages several battles through the year. In addition" +
                  " to D-Day / Europe, we host several events set in the" +
                  " Russian Front, the Pacific, North Africa / Italy, and more." +
                  " In order for this to happen, CHG membership includes" +
                  " a wide range of American, German, Red Army, Japanese," +
                  " Italian, and Commonwealth units.\n\nThe CHG showcases the" +
                  " only West Coast Regional event -- a large scale battle" +
                  " involving both Allied and Axis armor and infantry units." +
                  " 250-300 reenactors from all over the Western United States" +
                  " and beyond regularly attend the annual battle at George" +
                  " Air Force Base.  Armor includes American and German tanks" +
                  " -- not just one on each side, but sometimes two or" +
                  " three on a side. Each side will have half tracks;" +
                  " on the German side, you will often see several of" +
                  " these. In addition there are many jeeps, trucks," +
                  " and motorcycles in support. Aviation has been" +
                  " known to participate on both Axis and Allied" +
                  " side as well.\n\nBecause everyone is in period" +
                  " correct clothing and gear, and to add to immersion" +
                  " and the element of surprise and combat game play, these" +
                  " tactical battles are private: we do not allow members of" +
                  " the public to come and watch. It would harm the immersion" +
                  " and sense of realness that reenactors work so hard to" +
                  " recreate. The public can however see scaled-down public" +
                  " battles at Living History events such as the Chino Air" +
                  " Show and at Marching Through History.",
              TextStyle(
                fontSize: 16,
              ),
              TextAlign.left),
          Divider(
            height: 15.0,
            thickness: 2,
          ),
          Text(
            "Living History",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Divider(
            height: 15.0,
            thickness: 2,
          ),
          createText(
              "These events are generally run by outside organizations not" +
                  " connected with the CHG. Living History in its specific" +
                  " sense is geared towards various reenactor groups" +
                  " throughout history who come together to showcase" +
                  " different historical eras: you will see groups" +
                  " which portray  The American Revolutionary War," +
                  " Civil War, World War I, Korean War, Roman," +
                  " etc.\n\nLiving history events showcase camps set up by the" +
                  " various groups to illustrate their research and" +
                  " dedication to a time period via the use of their" +
                  " unique equipment, artifacts, weapons, vehicles" +
                  " and other items to make themselves appear as though" +
                  " they have stepped out of a history book. Often these events" +
                  " include a scripted mock battle for the enjoyment of the" +
                  " attending audience.\n\nThe events are staged to allow the" +
                  " general public to tour the assembled units and groups," +
                  " allowing attendees to ask questions, see demonstrations," +
                  " and generally learn about the various time periods on" +
                  " display.\n\nLiving History is a broad category and also" +
                  " includes other venues involving the public, such as Air" +
                  " Shows, Gun Shows, Parades. Veteran Events, Memorial" +
                  " Services, etc. ",
              TextStyle(fontSize: 16),
              TextAlign.left),
          Divider(
            height: 15.0,
            thickness: 2,
          ),
          createText(
              "Minimum Age\nPolicy for Tactical Events:",
              TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              TextAlign.center),
          Divider(
            height: 15.0,
            thickness: 2,
          ),
          createText(
              "The preferred age for a regular member is 18 years " +
                  " of age; a member less than 18 years of age may be " +
                  " admitted to a tactical battle event if they are " +
                  " accompanied by a parent or legal guardian and " +
                  " have a waiver of liability (click the icon below)" +
                  " signed by such parent or guardian " +
                  " and submitted to the Membership Chairman prior " +
                  " to such re-enactment. A legal parent or guardian " +
                  " must be present with the minor during the event. " +
                  "In no situation, however, may anyone under the age " +
                  " of 15 be admitted to tactical events.",
              TextStyle(fontSize: 16),
              TextAlign.left),
          Divider(height: 15.0),
          GestureDetector(
              onTap: () => _launchURL(_launchGDrive.toString()),
              child: ClipRRect(
                child: Image.asset(
                  "assets/images/events/EmbeddedImage.png",
                  height: 250.0,
                ),
              )),
          Divider(
            height: 15.0,
          ),
        ],
      ), // temp
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
