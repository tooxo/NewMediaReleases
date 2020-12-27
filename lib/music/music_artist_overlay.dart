import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'music_types.dart';

class ArtistOverlay extends StatefulWidget {
  final Artist artist;

  ArtistOverlay(this.artist);

  @override
  State<StatefulWidget> createState() => new ArtistOverlayState();
}

class ArtistOverlayState extends State<ArtistOverlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Text(
        widget.artist.name,
        style: GoogleFonts.nunitoSans(color: Colors.white),
      ),
    );
  }
}
