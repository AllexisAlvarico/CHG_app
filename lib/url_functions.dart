import 'package:url_launcher/url_launcher.dart';

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
