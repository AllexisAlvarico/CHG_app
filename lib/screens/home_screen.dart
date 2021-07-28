import 'package:CHG/utilities/sideDrawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:CHG/utilities/pdfView.dart';
import '../globals.dart';
import '../utilities/device.dart';

class HomePage extends StatelessWidget {
  final String bodyText =
      "The California Historical Group is a 501c3 non-profit organization dedicated to preserving the memory of and educating the public on the influential period of time during World War II.\n\nFounded in 1979, this group has remained an active leader in West Coast WWII reenacting and has participated in myriad events such as private tactical battles, public outreach and education at museums and living history events; as well as in commemorative events such as memorials, parades, and various other ceremonies.\n\nCHG member groups do their best in portraying a wide variety of participants in WWII as soldiers of various nationalities and specialties, and each member presents a degree of research and understanding into the conflict that only improves with each event and strengthens the community as a whole.\n\nOn our units page, you will find links to our current units and their contact information. If you wish to join the CHG, make contact with one of our units that interests you most and they will help you decide what you will need to attend our next event. If you are interested in general information regarding the CHG, please contact our public relations officer.";
  final String newsletterHeadingText = "The CHG has a newsletter: The Front.";
  final String newsletterText =
      "Written and edited by CHG members for CHG members, find issues by clicking on the covers below:";
  final String footerText =
      "The CHG, founded in 1979 and incorporated in 1992, is a non-profit organization that is recognized by the Department of Defense as a World War Two educational and reenactment organization.\n\nThe CHG’s is a non-political organization whose sole purpose is to preserve World War Two history through uniform, equipment and vehicle restorations, static displays, and historical reenactments.";

  // launch email
  void launchInEmail(String email) async {
    if (await canLaunch("mailto:$email")) {
      await launch("mailto:$email");
    } else {
      throw 'Could not launch email';
    }
  }

  // launch url in browser
  void launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    /* var size = MediaQuery.of(context).size; */
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          "HomePage",
          style: TextStyle(color: textColor),
        ),
        backgroundColor: appbarColor,
        elevation: Device.safeBlockVertical * 5,
      ),
      drawer: SideDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              height: spaceSize,
            ),
            Image.asset(
                // logo grabbed from the main website, have to reduce quality
                // as it introduced lag
                "assets/images/Home/Home.png"),
            Divider(
              height: spaceSize,
            ),
            createText(
              bodyText,
              TextStyle(fontSize: regularTextFontSize, color: textColor),
              TextAlign.left,
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
                  createText(
                    newsletterHeadingText,
                    TextStyle(fontSize: regularTextFontSize, color: textColor),
                    TextAlign.center,
                  ),
                  Divider(
                    height: spaceSize,
                  ),
                  createText(
                    newsletterText,
                    TextStyle(fontSize: regularTextFontSize, color: textColor),
                    TextAlign.center,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        PdfThumnnailButton(
                          thumbnail:
                              "assets/images/Home/Newsletters/the_front_one.png",
                          pdf:
                              "http://historical.vs-hp.org/external/The%20Front%20Issue%201.pdf",
                        ),
                        PdfThumnnailButton(
                          thumbnail:
                              "assets/images/Home/Newsletters/the_front_two.png",
                          pdf:
                              "http://historical.vs-hp.org/external/The%20Front%20Issue%202.pdf",
                        ),
                        PdfThumnnailButton(
                          thumbnail:
                              "assets/images/Home/Newsletters/the_front_three.png",
                          pdf:
                              "http://historical.vs-hp.org/external/The%20Front%20Issue%203.pdf",
                        ),
                        PdfThumnnailButton(
                          thumbnail:
                              "assets/images/Home/Newsletters/the_front_four.png",
                          pdf:
                              "http://historical.vs-hp.org/external/The%20Front%20Issue%204.pdf",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            createText(
              footerText,
              TextStyle(fontSize: regularTextFontSize, color: textColor),
              TextAlign.center,
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
  final Widget? child;

  const CustomContainer({
    Key? key,
    required this.text,
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
                color: textColor,
                fontSize: regularTextFontSize,
              ),
            ),
            child != null ? child! : Container()
          ],
        ),
        color: backgroundColor);
  }
}

// button with text underneath the icon
class CustomIconButton extends StatelessWidget {
  final Icon icon;
  final Text? label;
  final void Function()? onTap;

  const CustomIconButton({
    Key? key,
    required this.icon,
    this.label,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap != null ? onTap! : () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [icon, label != null ? label! : Container()],
      ),
    );
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
          height: Device.safeBlockVertical * 40,
        ),
      ),
    );
  }
}
