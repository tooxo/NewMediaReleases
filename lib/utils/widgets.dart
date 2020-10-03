import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../open_link.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
      child: Text(
        description,
        style: GoogleFonts.nunitoSans(fontSize: 20, color: Colors.white),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class Crew extends StatelessWidget {
  const Crew({
    Key key,
    @required this.crew,
  }) : super(key: key);

  final String crew;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
      child: Row(
        children: <Widget>[
          Text(
            crew,
            style: GoogleFonts.nunitoSans(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

class Link extends StatelessWidget {
  const Link({
    Key key,
    @required this.platform,
    @required this.platformLink,
    @required this.plattformIcon,
    @required this.iconSize,
  }) : super(key: key);

  final bool platform;
  final String platformLink;
  final IconData plattformIcon;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: this.platform
          ? () {
              OpenLink.openlink(platformLink);
            }
          : null,
      icon: Icon(
        plattformIcon,
        size: iconSize,
        color: this.platform ? Colors.white : Colors.grey,
      ),
    );
  }
}

class IconStats extends StatelessWidget {
  const IconStats({Key key, @required this.text, @required this.icon})
      : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Icon(
              icon,
              color: Colors.white,
              size: 28,
            ),
          ),
          Text(
            "$text",
            style: GoogleFonts.nunitoSans(color: Colors.white, fontSize: 20),
          )
        ],
      ),
    );
  }
}
