import 'dart:math';

import 'package:NewMediaReleases/common/countdown.dart';
import 'package:NewMediaReleases/music/music_preview.dart';
import 'package:NewMediaReleases/music/music_types.dart';
import 'package:NewMediaReleases/utils/date.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicDetailsImage extends StatelessWidget {
  final String url;

  MusicDetailsImage(this.url);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = min(constraints.maxWidth, constraints.maxHeight);

        return Container(
          width: width,
          height: width,
          child: CircularImage(this.url),
        );
      },
    );
  }
}

class MusicDetails extends StatelessWidget {
  final MusicalEntry musicalEntry;

  MusicDetails(this.musicalEntry);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 3,
                  child: MusicDetailsImage(musicalEntry.artUrl),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                )
              ],
            ),
          ),
          Text(
            musicalEntry.title,
            style: GoogleFonts.lato(
              fontSize: 25,
              fontWeight: FontWeight.w800,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0, top: 2),
            child: Text(
              "von ${musicalEntry.artist.name} • ${musicalEntry.genres.join(" | ")}",
              style:
                  GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: !isInFuture(musicalEntry.releaseDate)
                ? Text(
                    "Released: ${formatDate(date: musicalEntry.releaseDate)}",
                    style: GoogleFonts.lato(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                : Countdown(
                    musicalEntry.releaseDate,
                    musicalEntry.artist.timeZone,
                  ),
          ),
        ],
      ),
    );
  }
}
