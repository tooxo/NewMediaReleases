import 'dart:math';

import 'package:NewMediaReleases/common/countdown.dart';
import 'package:NewMediaReleases/common/popup.dart';
import 'package:NewMediaReleases/music/music_preview.dart';
import 'package:NewMediaReleases/music/music_types.dart';
import 'package:NewMediaReleases/utils/date.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

class TrackList extends StatelessWidget {
  final List<Song> entities;
  final bool showTrackNo;

  TrackList(this.entities, {this.showTrackNo = true});

  List<Song> prepareTrackList() {
    if (entities.length <= 1) {
      return entities;
    }
    // Get all tracks without track no
    List<Song> songsWithoutNo =
        entities.where((element) => element.trackNumber == -1).toList();
    List<Song> numberedSongs =
        entities.where((element) => element.trackNumber > 0).toList();

    numberedSongs.sort((Song a, Song b) {
      if (a.trackNumber < b.trackNumber) {
        return -1;
      } else if (a.trackNumber > b.trackNumber) {
        return 1;
      } else {
        return 0;
      }
    });

    int highestTrackNo = numberedSongs.last.trackNumber;

    List<Song> result = [];

    for (int i = 1; i <= highestTrackNo; i++) {
      Song song = numberedSongs.firstWhere(
        (element) => element.trackNumber == i,
        orElse: () => Song(
          title: "Track $i",
          trackNumber: i,
        ),
      );
      result.add(song);
    }
    return result + songsWithoutNo;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        for (Song song in prepareTrackList())
          ListTile(
            leading: Text(
              "${song.trackNumber == -1 ? "?" : song.trackNumber}",
              style: GoogleFonts.lato(fontSize: 18),
            ),
            title: Text(
              song.title,
              style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight:
                      song.artUrl == null ? FontWeight.w300 : FontWeight.w600),
            ),
            trailing: song.spotifyUri != null || song.appleUri != null
                ? IconButton(
                    iconSize: 20,
                    icon: Icon(
                      Icons.open_in_new,
                    ),
                    onPressed: song.spotifyUri != null || song.appleUri != null
                        ? () {
                            PopupWidget(
                              [
                                PopupTile(
                                    title: "Spotify",
                                    iconData: Icons.airline_seat_flat,
                                    url: "https://spotify.com/"),
                                PopupTile(
                                    title: "Apple Music",
                                    iconData: Icons.airplanemode_active,
                                    url: null)
                              ],
                            ).show(context);
                          }
                        : null,
                  )
                : null,
          ),
      ],
    );
  }
}

class MusicDetails extends StatelessWidget {
  final MusicalEntry musicalEntry;

  MusicDetails(this.musicalEntry);

  void onDone() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TrackList([
              Song(title: "track 1", trackNumber: 1),
              Song(
                title: "Father Stretch my Hands Pt. 1",
                trackNumber: 4,
                artUrl: "https://i.redd.it/9akyyisjvem11.png",
              ),
              Song(
                title: "Saint Pablo",
                trackNumber: 10,
                artUrl: "",
              ),
              Song(title: "track 2", trackNumber: 2),
              Song(title: "track -1", trackNumber: -1)
            ]),
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
                      onDone: this.onDone,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
