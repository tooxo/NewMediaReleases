import 'dart:async';
import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/services.dart';
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
  final AudioPlayer audioPlayer = AudioPlayer();

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
    List<Song> trackList = prepareTrackList();
    return Column(
      children: <Widget>[
        for (Song song in trackList)
          ListTile(
            dense: true,
            leading:
                MusicPlayingTile(song, audioPlayer, trackList.first == song),
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

class MusicPlayingTile extends StatefulWidget {
  @override
  _MusicPlayingTileState createState() => _MusicPlayingTileState();

  final Song song;
  final AudioPlayer audioPlayer;
  final bool shouldDispose;

  const MusicPlayingTile(this.song, this.audioPlayer, this.shouldDispose);
}

class _MusicPlayingTileState extends State<MusicPlayingTile> {
  bool isTheOnePlaying = false;
  double progress = 0.0;

  StreamSubscription<Duration> opc;
  StreamSubscription<AudioPlayerState> opsc;

  AudioPlayerState previousEvent;

  @override
  void initState() {
    opc = widget.audioPlayer.onAudioPositionChanged.listen((event) {
      // print(event);
    });
    opsc = widget.audioPlayer.onPlayerStateChanged.listen((event) {
      if (event == AudioPlayerState.COMPLETED ||
          event == AudioPlayerState.PLAYING) isTheOnePlaying = false;
      previousEvent = event;
    });
    super.initState();
  }

  @override
  void dispose() {
    opc?.cancel();
    opsc?.cancel();

    if (widget.shouldDispose) widget.audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.song.previewUrl != null) {
          widget.audioPlayer.play(widget.song.previewUrl);
        }
      },
      child: Container(
        alignment: Alignment.center,
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(200),
          ),
          border: Border.all(
              width: 1, color: Colors.white, style: BorderStyle.solid),
        ),
        child: widget.song.trackNumber != 0
            ? Text(
                "${widget.song.trackNumber == -1 ? "?" : widget.song.trackNumber}",
                style:
                    GoogleFonts.nunitoSans(fontSize: 18, color: Colors.white),
              )
            : null,
      ),
    );
  }
}

class MusicDetails extends StatefulWidget {
  final MusicalEntry musicalEntry;

  MusicDetails(this.musicalEntry);

  @override
  _MusicDetailsState createState() => _MusicDetailsState();
}

class _MusicDetailsState extends State<MusicDetails> {
  void onDone() {}

  Stream<List<Song>> loadSongsFromBackend() async* {
    DatabaseHandler dbh = DatabaseHandler();
    await dbh.open();
    /*
     List<Song> a = await dbh.getAlbumTracksFromDatabase(musicalEntry.id,
        artist: musicalEntry.artist);
    if (a != null) yield a;
     */

    Album album = widget.musicalEntry;
    if (album.tracks == null) {
      String response = await getTracksFromAlbum(widget.musicalEntry.id);
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
          'https://releases.tillschulte.de/music/${widget.musicalEntry is Album ? "albums" : "songs"}/${widget.musicalEntry.id}'),
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

    try {
      return (await parameters.buildShortLink()).shortUrl;
    } on PlatformException {
      return await parameters.buildUrl();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text(
          widget.musicalEntry is Song ? "Song" : "Album",
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
          widget.musicalEntry.hasStream
              ? IconButton(
                  icon: Icon(Icons.open_in_new),
                  onPressed: () => {
                    UrlPopupWidget(
                      [
                        PopupTile(
                            title: "Spotify",
                            iconData: Font.spotify,
                            url: widget.musicalEntry.spotifyUrl),
                        PopupTile(
                            title: "Apple Music",
                            iconData: Font.applemusic,
                            url: widget.musicalEntry.appleUri),
                        PopupTile(
                            title: "SoundCloud",
                            iconData: Font.soundcloud,
                            url: widget.musicalEntry.soundcloudUri),
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
                        tag: this.widget.musicalEntry.id,
                        child: MusicDetailsImage(
                          widget.musicalEntry.artUrl,
                          widget.musicalEntry.getScaledUrl(150),
                        ),
                      ),
                      onTap: () => this.widget.musicalEntry.artUrl != ""
                          ? Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (con) => DetailScreen(
                                  widget.musicalEntry.artUrl,
                                  tag: this.widget.musicalEntry.id,
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
                widget.musicalEntry.title,
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
                      builder: (context) =>
                          ArtistOverlay(widget.musicalEntry.artist));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      child: ClipOval(
                        child: Hero(
                          tag: widget.musicalEntry.artist.id,
                          child: CachedNetworkImage(
                            width: 35,
                            height: 35,
                            imageUrl:
                                widget.musicalEntry.artist.getScaledUrl(40),
                            placeholder: (con, url) => Center(
                              child: CircularProgressIndicator(
                                valueColor:
                                    AlwaysStoppedAnimation(Colors.white),
                              ),
                            ),
                            errorWidget: (con, url, e) => Image.asset(
                                "assets/image/image_not_found_small.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "${widget.musicalEntry.artist.name}",
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
              child: GenreList(widget.musicalEntry.genres),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                color: Colors.white,
                thickness: 1.2,
              ),
            ),
            !isInFuture(widget.musicalEntry.releaseDate) &&
                    widget.musicalEntry.releaseDate != null
                ? Text(
                    "Released",
                    //"${formatDate(date: musicalEntry.releaseDate)}",
                    style: GoogleFonts.nunitoSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )
                : Countdown(
                    widget.musicalEntry.releaseDate,
                    widget.musicalEntry.artist.timeZone,
                    widget.musicalEntry,
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
              child: this.widget.musicalEntry is Song
                  ? TrackList([this.widget.musicalEntry])
                  : StreamBuilder(
                      stream: loadSongsFromBackend(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData &&
                            snapshot.connectionState == ConnectionState.done) {
                          return TrackList(snapshot.data);
                        }
                        if (snapshot.hasError)
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "An error has occurred.",
                                style: GoogleFonts.nunitoSans(
                                    color: Colors.white, fontSize: 18),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.refresh,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {});
                                },
                              )
                            ],
                          );
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
