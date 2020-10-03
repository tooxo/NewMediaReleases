import 'dart:math';

import 'package:NewMediaReleases/common/countdown.dart';
import 'package:NewMediaReleases/common/detail_screen.dart';
import 'package:NewMediaReleases/common/network/music_network.dart';
import 'package:NewMediaReleases/common/popup.dart';
import 'package:NewMediaReleases/music/music_preview.dart';
import 'package:NewMediaReleases/music/music_types.dart';
import 'package:NewMediaReleases/utils/date.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Icons.dart';

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

    List<Song> result = [];

    if (numberedSongs.isNotEmpty) {
      int highestTrackNo = numberedSongs.last.trackNumber;
      for (int i = 1; i <= highestTrackNo; i++) {
        Song song = numberedSongs.firstWhere(
          (element) => element.trackNumber == i,
          orElse: () => Song(title: "Track $i", trackNumber: i, dummy: true),
        );
        result.add(song);
      }
    }
    return result + songsWithoutNo;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        for (Song song in prepareTrackList())
          ListTile(
            dense: true,
            leading: Container(
              alignment: Alignment.center,
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(200)),
                  border: Border.all(
                      width: 1, color: Colors.white, style: BorderStyle.solid)),
              child: song.trackNumber != 0
                  ? Text(
                      "${song.trackNumber == -1 ? "?" : song.trackNumber}",
                      style: GoogleFonts.nunitoSans(
                          fontSize: 18, color: Colors.white),
                    )
                  : null,
            ),
            title: Text(
              song.title,
              style: GoogleFonts.nunitoSans(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight:
                      song.artUrl == null ? FontWeight.w300 : FontWeight.w600),
            ),
            subtitle: song.artist != null
                ? Text(
                    song.allArtistsString,
                    style: GoogleFonts.nunitoSans(color: Colors.white),
                  )
                : Text(
                    "unknown",
                    style: GoogleFonts.nunitoSans(color: Colors.white),
                  ),
            trailing: song.hasStream && !song.dummy
                ? IconButton(
                    icon: Icon(
                      Icons.open_in_new,
                      color: Colors.white,
                    ),
                    onPressed: song.hasStream
                        ? () {
                            PopupWidget(
                              [
                                PopupTile(
                                    title: "Spotify",
                                    iconData: Font.spotify,
                                    url: song.spotifyUrl),
                                PopupTile(
                                    title: "Apple Music",
                                    iconData: Font.applemusic,
                                    url: song.appleUri),
                                PopupTile(
                                  title: "SoundCloud",
                                  iconData: Font.soundcloud,
                                  url: song.soundcloudUri,
                                ),
                                PopupTile(
                                    title: "YouTube",
                                    iconData: Font.youtube,
                                    url: song.youtubeUrl)
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text(
          musicalEntry is Song ? "Song" : "Album",
          style:
              GoogleFonts.nunitoSans(fontSize: 22, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
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
                    child: GestureDetector(
                      child: Hero(
                        tag: this.musicalEntry.id,
                        child: MusicDetailsImage(musicalEntry.artUrl),
                      ),
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (con) => DetailScreen(
                            musicalEntry.artUrl,
                            tag: this.musicalEntry.id,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  )
                ],
              ),
            ),
            Hero(
              tag: "${this.musicalEntry.id}-title",
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  musicalEntry.title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunitoSans(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0, top: 2),
              child: Text(
                "${musicalEntry.artist.name}",
                style: GoogleFonts.nunitoSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0, top: 2, left: 20, right: 20),
              child: Text(
                "${musicalEntry.genres.join(" | ")}",
                style: GoogleFonts.nunitoSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                color: Colors.white,
                thickness: 1.2,
              ),
            ),
            !isInFuture(musicalEntry.releaseDate) &&
                    musicalEntry.releaseDate != null
                ? Text(
                    "Released",
                        //"${formatDate(date: musicalEntry.releaseDate)}",
                    style: GoogleFonts.nunitoSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )
                : Countdown(
                    musicalEntry.releaseDate,
                    musicalEntry.artist.timeZone,
                    onDone: this.onDone,
                  ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                color: Colors.white,
                thickness: 1.2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: this.musicalEntry is Song
                  ? TrackList([this.musicalEntry])
                  : FutureBuilder(
                      future: getTracksFromAlbum(musicalEntry.id),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData &&
                            snapshot.connectionState == ConnectionState.done) {
                          Album album = Album.fromApiResponse(snapshot.data);
                          return TrackList(album.tracks);
                        }
                        return Container();
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
