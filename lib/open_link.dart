import 'package:url_launcher/url_launcher.dart';

class OpenLink {
  static openLink(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw 'Could not launch $link';
    }
  }
}
