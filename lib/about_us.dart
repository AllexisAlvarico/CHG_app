import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  final String bodyText =
      "The California Historical Group is a 501c3 non-profit organization dedicated to preserving the memory of and educating the public on the influential period of time during World War II.\n\nFounded in 1979, this group has remained an active leader in West Coast WWII reenacting and has participated in myriad events such as private tactical battles, public outreach and education at museums and living history events; as well as in commemorative events such as memorials, parades, and various other ceremonies.\n\nCHG member groups do their best in portraying a wide variety of participants in WWII as soldiers of various nationalities and specialties, and each member presents a degree of research and understanding into the conflict that only improves with each event and strengthens the community as a whole.\n\nOn our units page, you will find links to our current units and their contact information. If you wish to join the CHG, make contact with one of our units that interests you most and they will help you decide what you will need to attend our next event. If you are interested in general information regarding the CHG, please contact our public relations officer.";

  const AboutUsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1DFDB),
      appBar: AppBar(
        title: Text("About Us"),
        backgroundColor: Color(0xFF303033),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Image.network(
                "https://lh6.googleusercontent.com/x1aNZrb2IYd7xPd0msjUlgj82_f6EXjZF6QJAQuER1cvDTvWUDzUOwpEA5zYb3MuZwRpIQ=w16383"),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Text(
                bodyText,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
