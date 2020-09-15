import 'dart:convert';

import 'package:flutter/cupertino.dart';

class MusicalEntry {
  String id;
  String title;
  Artist artist;
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
  String youtubeId;
  bool single;

  get youtubeUrl => "https://youtube.com/watch?v=$youtubeId";

  Song(
      {String id,
      String title,
      Artist artist,
      List<Artist> featured_artists,
      this.album,
      List<String> genres,
      DateTime releaseDate,
      String spotifyUri,
      String appleUri,
      String soundcloudUri,
      this.youtubeId,
      Locale language,
      this.trackNumber,
      this.previewUrl,
      String artUrl,
      this.single})
      : super(id, title, artist, featured_artists, genres, releaseDate,
            spotifyUri, appleUri, soundcloudUri, language, artUrl);

  static Song fromApiResponse(String rawApiResponse) {
    dynamic parsedApiResponse = JsonDecoder().convert(rawApiResponse);
    return Song(
        id: parsedApiResponse["id"],
        title: parsedApiResponse["title"],
        artist: Artist.fromApiResponse(
            JsonEncoder().convert(parsedApiResponse["artist"])),
        featured_artists:
            (parsedApiResponse["featured_artists"] as List<Object>)
                .map((e) => Artist.fromApiResponse(JsonEncoder().convert(e)))
                .toList(),
        album: Album.fromApiResponse(
            JsonEncoder().convert(parsedApiResponse["album"])),
        genres: (parsedApiResponse["genres"] as List<dynamic>)
            .map((e) => e as String)
            .toList(),
        releaseDate: DateTime.parse(parsedApiResponse["releaseDate"]),
        spotifyUri: parsedApiResponse["spotifyUri"],
        appleUri: parsedApiResponse["appleUri"],
        soundcloudUri: parsedApiResponse["soundcloudUri"],
        youtubeId: parsedApiResponse["youtubeId"],
        language: null,
        // TODO
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

  static Album fromApiResponse(String rawApiResponse) {
    if (rawApiResponse == "null" || rawApiResponse == null) return null;
    dynamic parsedApiResponse = JsonDecoder().convert(rawApiResponse);
    return Album(
        id: parsedApiResponse["id"],
        title: parsedApiResponse["title"],
        artist: Artist.fromApiResponse(
            JsonEncoder().convert(parsedApiResponse["artist"])),
        featured_artists:
            (parsedApiResponse["featured_artists"] as List<dynamic>)
                .map((e) => Artist.fromApiResponse(JsonEncoder().convert(e)))
                .toList(),
        genres: (parsedApiResponse["genres"] as List<dynamic>)
            .map((e) => e as String)
            .toList(),
        releaseDate: parsedApiResponse["releaseDate"] == null
            ? null
            : DateTime.parse(parsedApiResponse["releaseDate"]),
        spotifyUri: parsedApiResponse["spotifyUri"],
        appleUri: parsedApiResponse["appleUri"],
        soundcloudUri: parsedApiResponse["soundcloudUri"],
        language: null,
        // TODO
        tracks: parsedApiResponse["tracks"] != null
            ? (parsedApiResponse["tracks"] as List<dynamic>)
                .map((e) => Song.fromApiResponse(JsonEncoder().convert(e)))
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

  Artist(
      {this.id,
      this.name,
      this.spotifyUri,
      this.appleUri,
      this.language,
      this.artUrl,
      this.timeZone});

  static Artist fromApiResponse(String rawApiResponse) {
    dynamic parsedApiResponse = JsonDecoder().convert(rawApiResponse);
    return Artist(
        id: parsedApiResponse["id"],
        name: parsedApiResponse["name"],
        spotifyUri: parsedApiResponse["spotifyUri"],
        appleUri: parsedApiResponse["appleUri"],
        language: null,
        // TODO,
        artUrl: parsedApiResponse["artUrl"],
        timeZone: parsedApiResponse["timezone"]);
  }
}
