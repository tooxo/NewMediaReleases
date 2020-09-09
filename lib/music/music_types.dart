import 'package:flutter/cupertino.dart';

class MusicalEntry {
  String id;
  String title;
  Artist artist;
  List<String> genres;
  DateTime releaseDate;
  String spotifyUri;
  String appleUri;
  Locale language;
  String artUrl;

  MusicalEntry(this.id, this.title, this.artist, this.genres, this.releaseDate,
      this.spotifyUri, this.appleUri, this.language, this.artUrl);
}

class Song extends MusicalEntry {
  Album album;
  int trackNumber;
  String previewUrl;

  Song(
      {String id,
      String title,
      Artist artist,
      this.album,
      List<String> genres,
      DateTime releaseDate,
      String spotifyUri,
      String appleUri,
      Locale language,
      this.trackNumber,
      this.previewUrl,
      String artUrl})
      : super(id, title, artist, genres, releaseDate, spotifyUri, appleUri,
            language, artUrl);
}

class Album extends MusicalEntry {
  List<Song> tracks;

  Album(
      {String id,
      String title,
      Artist artist,
      List<String> genres,
      DateTime releaseDate,
      String spotifyUri,
      String appleUri,
      Locale language,
      String artUrl,
      this.tracks})
      : super(id, title, artist, genres, releaseDate, spotifyUri, appleUri,
            language, artUrl);
}

class Artist {
  String id;
  String name;
  String spotifyUri;
  String appleUri;
  Locale language;
  String artUrl;
  int timeZone;

  Artist(
      {this.id,
      this.name,
      this.spotifyUri,
      this.appleUri,
      this.language,
      this.artUrl,
      this.timeZone});
}
