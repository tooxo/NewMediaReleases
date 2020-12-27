import 'dart:convert';

import 'package:flutter/cupertino.dart';

class MusicalEntry {
  String id;
  String title;
  Artist artist;

  // ignore: non_constant_identifier_names
  List<Artist> featured_artists;
  List<String> genres;
  DateTime releaseDate;
  String spotifyUri;
  String appleUri;
  String soundcloudUri;
  Locale language;
  String artUrl;

  get spotifyUrl {
    if (spotifyUri == "") return "";
    return spotifyUri
        .replaceAll(":", "/")
        .replaceAll("spotify", "https://open.spotify.com");
  }

  bool get hasStream =>
      this.appleUri != "" || this.soundcloudUri != "" || this.spotifyUri != "";

  String get searchTitle =>
      "$title $allArtistsString".toLowerCase().replaceAll(" ", "");

  String get featuredArtistsString {
    return featured_artists.map((e) => e.name).join(", ");
  }

  String get allArtistsString {
    return this.artist.name +
        (this.featured_artists.isNotEmpty ? ", " + featuredArtistsString : "");
  }

  String getScaledUrl(int width) {
    if (this.artUrl == null) return null;
    if (!this.artUrl.contains("images.genius")) return this.artUrl;
    return "https://t2.genius.com/unsafe/${width}x0/${Uri.encodeFull(this.artUrl)}";
  }

  DateTime get dayOfRelease {
    if (releaseDate == null) return null;
    return DateTime(releaseDate.year, releaseDate.month, releaseDate.day);
  }

  MusicalEntry(
      this.id,
      this.title,
      this.artist,
      this.featured_artists,
      this.genres,
      this.releaseDate,
      this.spotifyUri,
      this.appleUri,
      this.soundcloudUri,
      this.language,
      this.artUrl);
}

class Song extends MusicalEntry {
  Album album;
  int trackNumber;
  String previewUrl;
  String youtubeUrl;
  bool single;
  bool dummy = false;

  get hasStream => super.hasStream || this.youtubeUrl != null;

  Song(
      {String id,
      String title,
      Artist artist,
      // ignore: non_constant_identifier_names
      List<Artist> featured_artists,
      this.album,
      List<String> genres,
      DateTime releaseDate,
      String spotifyUri,
      String appleUri,
      String soundcloudUri,
      this.youtubeUrl,
      Locale language,
      this.trackNumber,
      this.previewUrl,
      String artUrl,
      this.single,
      this.dummy = false})
      : super(id, title, artist, featured_artists, genres, releaseDate,
            spotifyUri, appleUri, soundcloudUri, language, artUrl);

  static Song fromRawApiResponse(String rawApiResponse) {
    dynamic parsedApiResponse = JsonDecoder().convert(rawApiResponse);
    return Song.fromApiResponse(parsedApiResponse);
  }

  static Song fromApiResponse(dynamic parsedApiResponse) {
    if (parsedApiResponse == null) return parsedApiResponse;
    return Song(
        id: parsedApiResponse["id"],
        title: parsedApiResponse["title"],
        artist: parsedApiResponse["artist"] is Artist
            ? parsedApiResponse["artist"]
            : Artist.fromApiResponse(
                JsonEncoder().convert(parsedApiResponse["artist"])),
        featured_artists: parsedApiResponse["featured_artists"] != null
            ? (parsedApiResponse["featured_artists"] as List<Object>)
                .map((e) => Artist.fromApiResponse(JsonEncoder().convert(e)))
                .toList()
            : [],
        album: Album.fromApiResponse(parsedApiResponse["album"]),
        genres: (parsedApiResponse["genres"] as List<dynamic>)
            .map((e) => e as String)
            .toList(),
        releaseDate: parsedApiResponse["releaseDate"] == null
            ? null
            : DateTime.parse(parsedApiResponse["releaseDate"]),
        spotifyUri: parsedApiResponse["spotifyUri"],
        appleUri: parsedApiResponse["appleUri"],
        soundcloudUri: parsedApiResponse["soundcloudUri"],
        youtubeUrl: parsedApiResponse["youtubeUrl"],
        language: parsedApiResponse["language"] == ""
            ? null
            : Locale.fromSubtags(languageCode: parsedApiResponse["language"]),
        trackNumber: parsedApiResponse["trackNumber"],
        previewUrl: parsedApiResponse["previewUrl"],
        artUrl: parsedApiResponse["artUrl"],
        single: parsedApiResponse["single"]);
  }
}

class Album extends MusicalEntry {
  List<Song> tracks;

  Album(
      {String id,
      String title,
      Artist artist,
      // ignore: non_constant_identifier_names
      List<Artist> featured_artists,
      List<String> genres,
      DateTime releaseDate,
      String spotifyUri,
      String appleUri,
      String soundcloudUri,
      Locale language,
      String artUrl,
      this.tracks})
      : super(id, title, artist, featured_artists, genres, releaseDate,
            spotifyUri, appleUri, soundcloudUri, language, artUrl);

  static Album fromRawApiResponse(String rawApiResponse) {
    if (rawApiResponse == "null" || rawApiResponse == null) return null;
    dynamic parsedApiResponse = JsonDecoder().convert(rawApiResponse);
    return Album.fromApiResponse(parsedApiResponse);
  }

  static Album fromApiResponse(dynamic parsedApiResponse) {
    if (parsedApiResponse == null) return parsedApiResponse;
    return Album(
        id: parsedApiResponse["id"],
        title: parsedApiResponse["title"],
        artist: parsedApiResponse["artist"] != null
            ? Artist.fromApiResponse(
                JsonEncoder().convert(parsedApiResponse["artist"]))
            : null,
        featured_artists: parsedApiResponse["featured_artists"] != null
            ? (parsedApiResponse["featured_artists"] as List<dynamic>)
                .map((e) => Artist.fromApiResponse(JsonEncoder().convert(e)))
                .toList()
            : [],
        genres: (parsedApiResponse["genres"] as List<dynamic>)
            .map((e) => e as String)
            .toList(),
        releaseDate: parsedApiResponse["releaseDate"] == null
            ? null
            : DateTime.parse(parsedApiResponse["releaseDate"]),
        spotifyUri: parsedApiResponse["spotifyUri"],
        appleUri: parsedApiResponse["appleUri"],
        soundcloudUri: parsedApiResponse["soundcloudUri"],
        language: parsedApiResponse["language"] == ""
            ? null
            : Locale.fromSubtags(languageCode: parsedApiResponse["language"]),
        tracks: parsedApiResponse["tracks"] != null
            ? (parsedApiResponse["tracks"] as List<dynamic>)
                .map((e) => Song.fromApiResponse(e))
                .toList()
            : null,
        artUrl: parsedApiResponse["artUrl"]);
  }
}

class Artist {
  String id;
  String name;
  String spotifyUri;
  String appleUri;
  Locale language;
  String artUrl;
  int timeZone;
  int popularity;

  Artist(
      {this.id,
      this.name,
      this.spotifyUri,
      this.appleUri,
      this.language,
      this.artUrl,
      this.timeZone,
      this.popularity});

  static Artist fromApiResponse(String rawApiResponse) {
    dynamic parsedApiResponse = JsonDecoder().convert(rawApiResponse);
    return Artist(
        id: parsedApiResponse["id"],
        name: parsedApiResponse["name"],
        spotifyUri: parsedApiResponse["spotifyUri"],
        appleUri: parsedApiResponse["appleUri"],
        language: parsedApiResponse["language"] == ""
            ? null
            : Locale.fromSubtags(languageCode: parsedApiResponse["language"]),
        artUrl: parsedApiResponse["artUrl"],
        timeZone: parsedApiResponse["timezone"],
        popularity: parsedApiResponse["popularity"] ?? 0);
  }

  String getScaledUrl(int width) {
    if (this.artUrl == null) return null;
    if (!this.artUrl.contains("images.genius")) return this.artUrl;
    return "https://t2.genius.com/unsafe/${width}x0/${Uri.encodeFull(this.artUrl)}";
  }
}
