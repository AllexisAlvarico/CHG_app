import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  final String bodyText =
      " The California Historical Group is a 501c3 non-profit organization dedicated to preserving the memory of and educating the public on the influential period of time during World War II.\n\n Founded in 1979, this group has remained an active leader in West Coast WWII reenacting and has participated in myriad events such as private tactical battles, public outreach and education at museums and living history events; as well as in commemorative events such as memorials, parades, and various other ceremonies.\n\n CHG member groups do their best in portraying a wide variety of participants in WWII as soldiers of various nationalities and specialties, and each member presents a degree of research and understanding into the conflict that only improves with each event and strengthens the community as a whole.\n\n On our units page, you will find links to our current units and their contact information. If you wish to join the CHG, make contact with one of our units that interests you most and they will help you decide what you will need to attend our next event. If you are interested in general information regarding the CHG, please contact our public relations officer.";
  final String newsletterHeadingText = "The CHG has a newsletter: The Front.";
  final String newsletterText =
      "Written and edited by CHG members for CHG members, find issues by clicking on the covers below:";
  final String footerText =
      " The CHG, founded in 1979 and incorporated in 1992, is a non-profit organization that is recognized by the Department of Defense as a World War Two educational and reenactment organization.\n\n The CHG’s is a non-political organization whose sole purpose is to preserve World War Two history through uniform, equipment and vehicle restorations, static displays, and historical reenactments.";
  const AboutUsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1DFDB), // cream color
      appBar: AppBar(
        title: Text("About Us"),
        backgroundColor: Color(0xFF303033), // black color
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              // spacing
              height: 50,
            ),
            Image.network(
                // logo grabbed from the main website, have to reduce quality
                // as it introduced lag
                "https://lh6.googleusercontent.com/x1aNZrb2IYd7xPd0msjUlgj82_f6EXjZF6QJAQuER1cvDTvWUDzUOwpEA5zYb3MuZwRpIQ=w16383"),
            SizedBox(
              // spacing
              height: 50,
            ),
            CustomContainer(
              // body of the page with white background
              text: bodyText,
              backgroundColor: Colors.white,
            ),
            Container(
              // newsletter divider with cream background
              padding: EdgeInsets.fromLTRB(
                20,
                10,
                20,
                40,
              ),
              child: Column(
                children: [
                  Text(
                    newsletterHeadingText,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    // spacing
                    height: 10,
                  ),
                  Text(
                    newsletterText,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            CustomContainer(
              // footer with black background
              text: footerText,
              backgroundColor: Color(0xFF303033), // black color
            ),
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  const CustomContainer(
      {Key? key, required this.text, required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // body of the page with white background
        padding: EdgeInsets.fromLTRB(
          20,
          10,
          20,
          40,
        ),
        child: Text(
          text,
          style: TextStyle(
            // if the background color is on the darker side,
            // set the text color to white. vice versa for lighter backgrounds
            color: backgroundColor.computeLuminance() > 0.5
                ? Colors.black
                : Colors.white,
            fontSize: 18,
          ),
        ),
        color: backgroundColor);
  }
}
