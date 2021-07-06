import 'package:chg/custom_icon_button.dart';
import 'package:chg/pdfView.dart';
import 'package:flutter/material.dart';
import 'package:chg/url_functions.dart';

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
              // spacing between appbar and logo
              height: 50,
            ),
            Image.asset(
                // logo grabbed from the main website, have to reduce quality
                // as it introduced lag
                "assets/images/chg_logo.png"),
            SizedBox(
              // spacing between logo and body text
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
                    // newsletter heading
                    newsletterHeadingText,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    // spacing between newletter heading and body
                    height: 10,
                  ),
                  Text(
                    // newsletter body
                    newsletterText,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        PdfThumnnailButton(
                          thumbnail: "assets/images/the_front1.png",
                          pdf:
                              "http://historical.vs-hp.org/external/The%20Front%20Issue%201.pdf",
                        ),
                        PdfThumnnailButton(
                          thumbnail: "assets/images/the_front2.png",
                          pdf:
                              "http://historical.vs-hp.org/external/The%20Front%20Issue%202.pdf",
                        ),
                        PdfThumnnailButton(
                          thumbnail: "assets/images/the_front3.png",
                          pdf:
                              "http://historical.vs-hp.org/external/The%20Front%20Issue%203.pdf",
                        ),
                        PdfThumnnailButton(
                          thumbnail: "assets/images/the_front4.png",
                          pdf:
                              "http://historical.vs-hp.org/external/The%20Front%20Issue%204.pdf",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            CustomContainer(
              // footer with black background
              text: footerText,
              backgroundColor: Color(0xFF303033), // black color
              child: Column(
                children: [
                  SizedBox(
                    // spacing between footer text and contact us
                    height: 50,
                  ),
                  Text(
                    "Contact Us",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    // spacing between contact us heading and links
                    height: 20,
                  ),
                  Row(
                    // two icon buttons
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomIconButton(
                        // president email
                        onTap: () async {
                          launchInEmail("thomas.metzger@gmail.com");
                        },
                        icon: Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                        ),
                        label: Text("CHG PRESIDENT",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                      CustomIconButton(
                        // webmaster email
                        onTap: () async {
                          launchInEmail("adminz@chgww2.net");
                        },
                        icon: Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                        ),
                        label: Text("CHG WEBMASTER",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    // spacing between the rows containing icon buttons
                    height: 25,
                  ),
                  Row(
                    // two icon buttons
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomIconButton(
                        // public affairs email
                        onTap: () async {
                          launchInEmail("thomas.metzger@gmail.com");
                        },
                        icon: Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                        ),
                        label: Text("CHG PUBLIC AFFAIRS",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                      CustomIconButton(
                        // facebook browser link
                        onTap: () async {
                          launchInBrowser(
                              "https://www.facebook.com/groups/19634229966/");
                        },
                        icon: Icon(
                          Icons.facebook_outlined,
                          color: Colors.white,
                        ),
                        label: Text("CHG ON FACEBOOK",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// custom container that keeps consistent padding, styling, etc for any generic
// bits of information throughout the about us page
class CustomContainer extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Widget? child;

  const CustomContainer({
    Key? key,
    required this.text,
    required this.backgroundColor,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // body of the page with white background
        padding: EdgeInsets.fromLTRB(
          20,
          10,
          20,
          60,
        ),
        child: Column(
          children: [
            Text(
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
            child != null ? child! : Container()
          ],
        ),
        color: backgroundColor);
  }
}

// pdf-specific buttons that launch the pdf
class PdfThumnnailButton extends StatelessWidget {
  final String thumbnail;
  final String pdf;

  const PdfThumnnailButton({
    Key? key,
    required this.thumbnail,
    required this.pdf,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PDFView(
                    path: pdf,
                  )),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        child: Image.asset(
          thumbnail,
          height: 300,
        ),
      ),
    );
  }
}
