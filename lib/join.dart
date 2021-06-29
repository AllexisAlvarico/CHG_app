import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _launchAUnit1 = Uri(
    scheme: 'https',
    path:
        "www.google.com/url?q=http%3A%2F%2Fanavare7.wix.com%2F2nd-id-reenacted--1&sa=D&sntz=1&usg=AFQjCNGKf6-SWy7FMadyb3s5D1ygwOWdbg");
final Uri _launchAUnit2 = Uri(
    scheme: 'https',
    path:
        "www.google.com/url?q=https%3A%2F%2Fsites.google.com%2Fsite%2Fchg35th%2F&sa=D&sntz=1&usg=AFQjCNEI_JiI3TwdZhNGjAO97LWhjcuzrw");
final Uri _launchAUnit3 = Uri(
    scheme: 'https',
    path:
        "www.google.com/url?q=http%3A%2F%2Fwww.506thrps.com%2F&sa=D&sntz=1&usg=AFQjCNFjjwasX4ViEK1W30mfZuPv0Nwy0Q");
final Uri _launchAUnit4 = Uri(
    scheme: 'https',
    path:
        "www.google.com/url?q=https%3A%2F%2Fsites.google.com%2Fsite%2F2ndarmoredchg%2F&sa=D&sntz=1&usg=AFQjCNFwaVSYYo5KyAT-EDYew0t38x-XDw");
final Uri _launchAUnit5 = Uri(
    scheme: 'https',
    path:
        "www.google.com/url?q=https%3A%2F%2Fanthony4795.wixsite.com%2F3rdplatoon%3Ffbclid%3DIwAR2bLLondVcYRFBmmOJB105lknVF5rZ8msquaDd0sxLtGivmSsMXZ4W7QMM&sa=D&sntz=1&usg=AFQjCNFeipN21meejp2o53zVbV8cEI_GkQ");
final Uri _launchAUnit6 = Uri(
    scheme: 'https',
    path:
        "www.google.com/url?q=http%3A%2F%2Fwww.chgww2.net%2Funitcontact&sa=D&sntz=1&usg=AFQjCNHX5XL7eVQrnaQHuVrdaXqLaaok5A");

final Uri _launchRUnit1 = Uri(
    scheme: 'https',
    path:
        "www.google.com/url?q=http%3A%2F%2F150thrifledvrkkareenacted.homestead.com%2Findex.html&sa=D&sntz=1&usg=AFQjCNHrydbjiHxbLQFJRYJktJs6poAePQ");
final Uri _launchRUnit2 = Uri(
    scheme: 'https',
    path:
        "www.google.com/url?q=http%3A%2F%2Fwww.70thguards.com%2F&sa=D&sntz=1&usg=AFQjCNEtAC5mam8mGvdrdfJLbnls2THpeQ");

final Uri _launchBUnit = Uri(
    scheme: 'https',
    path:
        "www.google.com/url?q=http%3A%2F%2Fwww.1stairborne.com%2F&sa=D&sntz=1&usg=AFQjCNH-hnBqwQMRkWyrx7bG-H4B_bgkIw");

final Uri _launchCUnit = Uri(
    scheme: 'https',
    path:
        "www.google.com/url?q=http%3A%2F%2Fwww.lrdg.org%2F&sa=D&sntz=1&usg=AFQjCNEr58Mn88yclXRZ1ou2wKHTdI3NnQ");

final Uri _launchGUnit1 = Uri(
    scheme: 'https',
    path:
        "www.google.com/url?q=http%3A%2F%2Fwww.12hj.com%2F&sa=D&sntz=1&usg=AFQjCNEGoJfg5CH_LqR16L_w1SgzwKdLYA");
final Uri _launchGUnit2 = Uri(
    scheme: 'https',
    path:
        "www.google.com/url?q=http%3A%2F%2Fwww.21stpanzerdivision.com%2F&sa=D&sntz=1&usg=AFQjCNE-T967dJtOdVOnBD4lJ7m-vOwjsA");
final Uri _launchGUnit3 = Uri(
    scheme: 'https',
    path:
        "www.google.com/url?q=http%3A%2F%2Fwww.chgww2.net%2Funitcontact&sa=D&sntz=1&usg=AFQjCNHX5XL7eVQrnaQHuVrdaXqLaaok5A");
final Uri _launchGUnit4 =
    Uri(scheme: 'https', path: "www.chgww2.net/unitcontact");

final Uri _launchJUnit = Uri(
    scheme: 'https',
    path:
        "www.google.com/url?q=https%3A%2F%2Fwww.facebook.com%2FHasegawaShoutai%2F&sa=D&sntz=1&usg=AFQjCNFDMYdnHs0wI4EsfIiZXvQPi3bCzg");

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
      appBar: AppBar(
        automaticallyImplyLeading: true, // allows use of back button
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false)),
        title: Text(
          "Join",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "Futura"),
        ),
      ),
      body: ListView(
        children: [
          Image(image: AssetImage("assets/images/Join/JoinHeader.JPG")),
          Container(
            child: Column(
              children: [
                Text(
                  "\nBECOMING A WWII REENACTOR",
                  style: TextStyle(fontSize: 26),
                ),
                Text(
                  "Our members range in age from 15 to 70 and come in all sorts of shapes and sizes, but most are in good enough shape to participate in events." +
                      " Physical participation is the equivalent of light hiking all day." +
                      " CHG units portray many combat units of WWII, varying from foot soldier to airborne trooper to armored crewman and more." +
                      " restrictions as issued by local authorities to the event sites.\n"
                          "Men and women participate in the CHG; and while generally for historical accuracy most units do not have women in combat/soldier positions," +
                      " Red Army units do allow women in combat. We do have an American field hospital, which -- when combined with the Red Army --" +
                      "affords women the opportunity to participate in all of our events.\n"
                          "Events are mainly 'tactical reenactments' held variously on public or private land." +
                      " There are anywhere from six to eight a year, ranging all seasons and in all terrain." +
                      " There are also public service events, such as various 4th of July parades and air shows." +
                      " Finally, we participate in Living History events, at which reenactors from various organizations with a variety of historical focuses can be encountered.\n" +
                      "Many of our battles are focused on WWII in Europe, which saw American and Commonwealth Allied forces battling against German combatants." +
                      " There are also Pacific, Mediterranean, and Eastern Front battles as well." +
                      " Each year has seen a vast dual-front engagement in which Russian and Western Allied forces fight the Germans in the last days of the Reich.\n" +
                      "Most units have no membership fees, and have members from throughout California." +
                      " The cost to join the CHG is 25 Dollars a year, and individual events cost from 25-40 Dollars.\n"
                          "Carefully examine each unit through their websites, phone numbers, and e-mails." +
                      " If you find a unit which holds interest to you, feel free to contact the recruiting officer for that unit and inquire" +
                      " about things such as unit authenticity standards, accepted vendors, and requirement for membership within that unit.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Container(
              color: Colors.grey[400],
              child: Column(
                children: [
                  Text("\n*These units are second impression units."),
                  Text(
                    "\nAmerican Units",
                    style: TextStyle(fontSize: 26),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchAUnit1.toString()),
                    child: Text(
                      "\n2nd Infantry Division",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchAUnit2.toString()),
                    child: Text(
                      "\n35th Infantry Division",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchAUnit3.toString()),
                    child: Text(
                      "\n101st Airborne",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchAUnit4.toString()),
                    child: Text(
                      "\n2nd Armored Division",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchAUnit5.toString()),
                    child: Text(
                      "\n3rd Platoon",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchAUnit6.toString()),
                    child: Text(
                      "\n45th Field Hospital",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Text(
                    "\nRed Army Units",
                    style: TextStyle(fontSize: 26),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchRUnit1.toString()),
                    child: Text(
                      "\n150th Rifles",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchRUnit2.toString()),
                    child: Text(
                      "\n70th Guards",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Text(
                    "\nBritish Unit",
                    style: TextStyle(fontSize: 26),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchBUnit.toString()),
                    child: Text(
                      "\n1st Airborne",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Text(
                    "\nCommonwealth Unit",
                    style: TextStyle(fontSize: 26),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchCUnit.toString()),
                    child: Text(
                      "\nLong Range Desert Group",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Text("\nQueen's Own Rifles of Canada*",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                      )),
                  Text(
                    "\nGerman Units",
                    style: TextStyle(fontSize: 26),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchGUnit1.toString()),
                    child: Text(
                      "\n12th SS Panzerdivision",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchGUnit2.toString()),
                    child: Text(
                      "\n21st Panzerdivision",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchGUnit3.toString()),
                    child: Text(
                      "\n2nd Fallschirmjagers",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchGUnit4.toString()),
                    child: Text(
                      "\n98th Gebirgsjager Regiment",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Text(
                    "\nJapanese Unit",
                    style: TextStyle(fontSize: 26),
                  ),
                  GestureDetector(
                    onTap: () => _launchURL(_launchJUnit.toString()),
                    child: Text(
                      "\nHasegawa Shoutai*",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        decoration: TextDecoration.underline,
                      ),
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
                        Colors.black.withAlpha(100), BlendMode.darken))),
            child: Column(
              children: [
                Text(
                  "\nAnnouncement" +
                      "\nThe new CHG payment system has arrived!" +
                      "\nClick through the image for more information and payment link.\n",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                    onTap: () => _launchURL(_launchDues.toString()),
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/images/Join/Dues.png",
                        height: 200,
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
