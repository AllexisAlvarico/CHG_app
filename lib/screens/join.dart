import 'package:flutter/material.dart';
import '../globals.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utilities/device.dart';

final Uri _launchAUnit1 = Uri(scheme: 'https', path: "www.2ndidmanchus.org");
final Uri _launchAUnit2 =
    Uri(scheme: 'https', path: "sites.google.com/site/chg35th/");
final Uri _launchAUnit3 = Uri(scheme: 'https', path: "www.506thrps.com");
final Uri _launchAUnit4 =
    Uri(scheme: 'https', path: "sites.google.com/site/2ndarmoredchg/");
final Uri _launchAUnit5 = Uri(
    scheme: 'https',
    path:
        "anthony4795.wixsite.com/3rdplatoon?fbclid=IwAR2bLLondVcYRFBmmOJB105lknVF5rZ8msquaDd0sxLtGivmSsMXZ4W7QMM"); // Link causing problems, wix not connecting to website
final Uri _launchAUnit6 =
    Uri(scheme: 'https', path: "www.chgww2.net/unitcontact");

final Uri _launchRUnit1 = Uri(
    scheme: 'http',
    path:
        "150thrifledvrkkareenacted.homestead.com/index.html"); // Link causing problems, cannot connect to server

final Uri _launchBUnit = Uri(scheme: 'http', path: "www.1stairborne.com/");

final Uri _launchCUnit = Uri(scheme: 'http', path: "www.lrdg.org/");

final Uri _launchGUnit1 = Uri(scheme: 'http', path: "www.12hj.com/");
final Uri _launchGUnit2 =
    Uri(scheme: 'http', path: "www.21stpanzerdivision.com/");
final Uri _launchGUnit3 =
    Uri(scheme: 'https', path: "www.chgww2.net/unitcontact");
final Uri _launchGUnit4 =
    Uri(scheme: 'https', path: "www.chgww2.net/unitcontact");

final Uri _launchJUnit =
    Uri(scheme: 'https', path: "www.facebook.com/HasegawaShoutai/");

final Uri _launchDues =
    Uri(scheme: 'https', path: "www.chgww2.net/headquarters/dues");

class JoinPage extends StatefulWidget {
  @override
  _JoinPageState createState() => _JoinPageState();
}

class _JoinPageState extends State<JoinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Image(image: AssetImage("assets/images/Join/JoinHeader.JPG")),
          Container(
            child: Column(
              children: [
                Divider(
                  height: spaceSize,
                  thickness: 2,
                ),
                createText(
                  "BECOMING A WWII REENACTOR",
                  TextStyle(fontSize: headerTextFontSize, color: textColor),
                  TextAlign.center,
                ),
                Divider(
                  height: spaceSize,
                  thickness: 2,
                ),
                createText(
                  "Our members range in age from 15 to 70 and come in all sorts of shapes and sizes, but most are in good enough shape to participate in events." +
                      " Physical participation is the equivalent of light hiking all day." +
                      " CHG units portray many combat units of WWII, varying from foot soldier to airborne trooper to armored crewman and more." +
                      " restrictions as issued by local authorities to the event sites.\n\n"
                          "Men and women participate in the CHG; and while generally for historical accuracy most units do not have women in combat/soldier positions," +
                      " Red Army units do allow women in combat. We do have an American field hospital, which -- when combined with the Red Army --" +
                      "affords women the opportunity to participate in all of our events.\n\n"
                          "Events are mainly 'tactical reenactments' held variously on public or private land." +
                      " There are anywhere from six to eight a year, ranging all seasons and in all terrain." +
                      " There are also public service events, such as various 4th of July parades and air shows." +
                      " Finally, we participate in Living History events, at which reenactors from various organizations with a variety of historical focuses can be encountered.\n\n" +
                      "Many of our battles are focused on WWII in Europe, which saw American and Commonwealth Allied forces battling against German combatants." +
                      " There are also Pacific, Mediterranean, and Eastern Front battles as well." +
                      " Each year has seen a vast dual-front engagement in which Russian and Western Allied forces fight the Germans in the last days of the Reich.\n\n" +
                      "Most units have no membership fees, and have members from throughout California." +
                      " The cost to join the CHG is 25 Dollars a year, and individual events cost from 25-40 Dollars.\n\n"
                          "Carefully examine each unit through their websites, phone numbers, and e-mails." +
                      " If you find a unit which holds interest to you, feel free to contact the recruiting officer for that unit and inquire" +
                      " about things such as unit authenticity standards, accepted vendors, and requirement for membership within that unit.\n\n",
                  TextStyle(fontSize: regularTextFontSize, color: textColor),
                  TextAlign.left,
                ),
              ],
            ),
          ),
          Container(
              color: backgroundColor,
              child: Column(
                children: [
                  createText(
                      "\n*These units are second impression units.",
                      TextStyle(fontSize: alertSize, color: textColor),
                      TextAlign.center),
                  createText(
                    "\nAmerican Units",
                    TextStyle(fontSize: headerTextFontSize, color: textColor),
                    TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchAUnit1.toString()),
                    child: createText(
                      "\n2nd Infantry Division",
                      TextStyle(
                        fontSize: alertSize,
                        decoration: TextDecoration.underline,
                        color: textColor,
                      ),
                      TextAlign.center,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchAUnit2.toString()),
                    child: createText(
                      "\n35th Infantry Division",
                      TextStyle(
                        fontSize: alertSize,
                        decoration: TextDecoration.underline,
                        color: textColor,
                      ),
                      TextAlign.center,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchAUnit3.toString()),
                    child: createText(
                      "\n101st Airborne",
                      TextStyle(
                        fontSize: alertSize,
                        decoration: TextDecoration.underline,
                        color: textColor,
                      ),
                      TextAlign.center,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchAUnit4.toString()),
                    child: createText(
                      "\n2nd Armored Division",
                      TextStyle(
                        fontSize: alertSize,
                        decoration: TextDecoration.underline,
                        color: textColor,
                      ),
                      TextAlign.center,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchAUnit5.toString()),
                    child: createText(
                      "\n3rd Platoon",
                      TextStyle(
                        fontSize: alertSize,
                        decoration: TextDecoration.underline,
                        color: textColor,
                      ),
                      TextAlign.center,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchAUnit6.toString()),
                    child: createText(
                      "\n45th Field Hospital",
                      TextStyle(
                        fontSize: alertSize,
                        decoration: TextDecoration.underline,
                        color: textColor,
                      ),
                      TextAlign.center,
                    ),
                  ),
                  createText(
                    "\nRed Army Units",
                    TextStyle(
                      fontSize: headerTextFontSize,
                      color: textColor,
                    ),
                    TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchRUnit1.toString()),
                    child: createText(
                      "\n150th Rifles",
                      TextStyle(
                        fontSize: alertSize,
                        decoration: TextDecoration.underline,
                        color: textColor,
                      ),
                      TextAlign.center,
                    ),
                  ),
                  createText(
                    "\n70th Guards",
                    TextStyle(
                      fontSize: alertSize,
                      color: textColor,
                    ),
                    TextAlign.center,
                  ),
                  createText(
                    "\nBritish Unit",
                    TextStyle(
                      fontSize: headerTextFontSize,
                      color: textColor,
                    ),
                    TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchBUnit.toString()),
                    child: createText(
                      "\n1st Airborne",
                      TextStyle(
                        fontSize: alertSize,
                        decoration: TextDecoration.underline,
                        color: textColor,
                      ),
                      TextAlign.center,
                    ),
                  ),
                  createText(
                    "\nCommonwealth Unit",
                    TextStyle(
                      fontSize: headerTextFontSize,
                      color: textColor,
                    ),
                    TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchCUnit.toString()),
                    child: createText(
                      "\nLong Range Desert Group",
                      TextStyle(
                        fontSize: alertSize,
                        decoration: TextDecoration.underline,
                        color: textColor,
                      ),
                      TextAlign.center,
                    ),
                  ),
                  createText(
                    "\nQueen's Own Rifles of Canada*",
                    TextStyle(
                      fontSize: alertSize,
                      color: textColor,
                    ),
                    TextAlign.center,
                  ),
                  createText(
                    "\nGerman Units",
                    TextStyle(
                      fontSize: headerTextFontSize,
                      color: textColor,
                    ),
                    TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchGUnit1.toString()),
                    child: createText(
                      "\n12th SS Panzerdivision",
                      TextStyle(
                        fontSize: alertSize,
                        decoration: TextDecoration.underline,
                        color: textColor,
                      ),
                      TextAlign.center,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchGUnit2.toString()),
                    child: createText(
                        "\n21st Panzerdivision",
                        TextStyle(
                          fontSize: alertSize,
                          decoration: TextDecoration.underline,
                          color: textColor,
                        ),
                        TextAlign.center),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchGUnit3.toString()),
                    child: createText(
                      "\n2nd Fallschirmjagers",
                      TextStyle(
                        fontSize: alertSize,
                        decoration: TextDecoration.underline,
                        color: textColor,
                      ),
                      TextAlign.center,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchGUnit4.toString()),
                    child: createText(
                      "\n98th Gebirgsjager Regiment",
                      TextStyle(
                        fontSize: alertSize,
                        decoration: TextDecoration.underline,
                        color: textColor,
                      ),
                      TextAlign.center,
                    ),
                  ),
                  createText(
                    "\nJapanese Unit",
                    TextStyle(
                      fontSize: headerTextFontSize,
                      color: textColor,
                    ),
                    TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchJUnit.toString()),
                    child: createText(
                      "\nHasegawa Shoutai*\n",
                      TextStyle(
                        fontSize: alertSize,
                        decoration: TextDecoration.underline,
                        color: textColor,
                      ),
                      TextAlign.center,
                    ),
                  )
                ],
              )),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Join/EmbeddedImage.jpg"),
                    fit: BoxFit.fill,
                    colorFilter: new ColorFilter.mode(
                        textColor.withAlpha(100), BlendMode.darken))),
            child: Column(
              children: [
                createText(
                  "\nAnnouncement",
                  TextStyle(
                    fontSize: headerTextFontSize,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                  TextAlign.center,
                ),
                createText(
                  "\nThe new CHG payment system has arrived!" +
                      "\nClick through the image for more information and payment link.\n",
                  TextStyle(
                    fontSize: regularTextFontSize,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                  TextAlign.left,
                ),
                GestureDetector(
                    onTap: () => _launchURL(_launchDues.toString()),
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/images/Join/Dues.png",
                        height: Device.safeBlockVertical * 50,
                        alignment: Alignment.topRight,
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

void _launchURL(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
