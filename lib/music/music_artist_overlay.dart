import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
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
  Widget build(BuildContext context) => AlertDialog(
        backgroundColor: Colors.grey.shade900,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Hero(
                    tag: widget.artist.id,
                    child: CachedNetworkImage(
                      imageUrl: widget.artist.artUrl,
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    widget.artist.name,
                    style: GoogleFonts.nunitoSans(color: Colors.white),
                  ),
                ),
                widget.artist.country != null
                    ? Text(EmojiParser()
                        .get(widget.artist.country.countryCode)
                        .code)
                    : Container()
              ],
            ),
            FlatButton.icon(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              label: Text(
                "Follow",
                style: GoogleFonts.nunitoSans(color: Colors.white),
              ),
              onPressed: () {},
            )
          ],
        ),
      );
}
