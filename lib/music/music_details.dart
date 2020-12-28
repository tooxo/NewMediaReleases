import 'dart:math';

import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:new_media_releases/common/countdown.dart';
import 'package:new_media_releases/common/database/database.dart';
import 'package:new_media_releases/common/detail_screen.dart';
import 'package:new_media_releases/common/network/music_network.dart';
import 'package:new_media_releases/common/popup.dart';
import 'package:new_media_releases/music/music_artist_overlay.dart';
import 'package:new_media_releases/music/music_types.dart';
import 'package:new_media_releases/music/widgets/genre_list.dart';
import 'package:new_media_releases/utils/date.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';

import '../Icons.dart';

class MusicDetailsImage extends StatelessWidget {
  final String url;
  final String previewUrl;

  MusicDetailsImage(this.url, this.previewUrl);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = min(constraints.maxWidth, constraints.maxHeight);

        return ClipOval(
          child: this.url != ""
              ? CachedNetworkImage(
                  imageUrl: this.url,
                  width: width,
                  height: width,
                  placeholder: (context, url) => CachedNetworkImage(
                    imageUrl: this.previewUrl,
                    fit: BoxFit.cover,
                  ),
                  errorWidget: (context, url, e) => CachedNetworkImage(
                    imageUrl: this.previewUrl,
                    fit: BoxFit.cover,
                  ),
                )
              : Image.asset("assets/image/image_not_found.jpg"),
        );
      },
    );
  }
}

class TrackList extends StatelessWidget {
  final List<Song> entities;

  TrackList(this.entities);

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
                      song.artUrl == null ? FontWeight.w200 : FontWeight.w600),
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
                            UrlPopupWidget(
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
                                    url: song.soundcloudUri),
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

  Stream<List<Song>> loadSongsFromBackend() async* {
    DatabaseHandler dbh = DatabaseHandler();
    await dbh.open();
    /*
     List<Song> a = await dbh.getAlbumTracksFromDatabase(musicalEntry.id,
        artist: musicalEntry.artist);
    if (a != null) yield a;
     */

    Album album = musicalEntry;
    if (album.tracks == null) {
      String response = await getTracksFromAlbum(musicalEntry.id);
      album = Album.fromRawApiResponse(response);
    }
    dbh.upsertManyAlbums([album]);
    dbh.upsertManySongs(album.tracks,
        albumId: album.id, artistId: album.artist.id);

    yield album.tracks;
  }

  Future<Uri> createShareUrl() async {
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: 'https://rl.tillschulte.de',
      link: Uri.parse(
          'https://releases.tillschulte.de/music/${musicalEntry is Album ? "albums" : "songs"}/${musicalEntry.id}'),
      androidParameters: AndroidParameters(
        packageName: 'com.newmediareleases.android',
        minimumVersion: 0,
      ),
      iosParameters: IosParameters(
        bundleId: 'com.newmediareleases.ios',
        minimumVersion: '1.0.0',
        appStoreId: '123456789',
      ),
      socialMetaTagParameters: SocialMetaTagParameters(
        title: '',
        description: '',
      ),
    );

    return await parameters.buildUrl();
  }

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
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () async {
              Share.share((await createShareUrl()).toString());
            },
          ),
          musicalEntry.hasStream
              ? IconButton(
                  icon: Icon(Icons.open_in_new),
                  onPressed: () => {
                    UrlPopupWidget(
                      [
                        PopupTile(
                            title: "Spotify",
                            iconData: Font.spotify,
                            url: musicalEntry.spotifyUrl),
                        PopupTile(
                            title: "Apple Music",
                            iconData: Font.applemusic,
                            url: musicalEntry.appleUri),
                        PopupTile(
                            title: "SoundCloud",
                            iconData: Font.soundcloud,
                            url: musicalEntry.soundcloudUri),
                      ],
                    ).show(context)
                  },
                )
              : Container()
        ],
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
                        child: MusicDetailsImage(
                          musicalEntry.artUrl,
                          musicalEntry.getScaledUrl(150),
                        ),
                      ),
                      onTap: () => this.musicalEntry.artUrl != ""
                          ? Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (con) => DetailScreen(
                                  musicalEntry.artUrl,
                                  tag: this.musicalEntry.id,
                                ),
                              ),
                            )
                          : null,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  )
                ],
              ),
            ),
            Padding(
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
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0, top: 2),
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => ArtistOverlay(musicalEntry.artist));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      child: ClipOval(
                        child: CachedNetworkImage(
                          width: 35,
                          height: 35,
                          imageUrl: musicalEntry.artist.getScaledUrl(40),
                          placeholder: (con, url) => Center(
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation(Colors.white),
                            ),
                          ),
                          errorWidget: (con, url, e) => Image.asset(
                              "assets/image/image_not_found_small.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "${musicalEntry.artist.name}",
                        style: GoogleFonts.nunitoSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 4.0, top: 2, left: 20, right: 20),
              /*child: Text(
                "${musicalEntry.genres.join(" | ")}",
                style: GoogleFonts.nunitoSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),*/
              child: GenreList(musicalEntry.genres),
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
                    musicalEntry,
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
                  : StreamBuilder(
                      stream: loadSongsFromBackend(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData &&
                            snapshot.connectionState == ConnectionState.done) {
                          return TrackList(snapshot.data);
                        }
                        return CircularProgressIndicator(
                          valueColor:
                              const AlwaysStoppedAnimation(Colors.white),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
