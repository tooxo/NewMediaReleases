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
      String artUrl})
      : super(id, title, artist, featured_artists, genres, releaseDate,
            spotifyUri, appleUri, soundcloudUri, language, artUrl);

  static Song fromApiResponse(String rawApiResponse) {
    dynamic parsedApiResponse = JsonDecoder().convert(rawApiResponse);
    return Song(
      id: parsedApiResponse["id"],
      title: parsedApiResponse["title"],
      artist: Artist.fromApiResponse(
          JsonEncoder().convert(parsedApiResponse["artist"])),
      featured_artists: (parsedApiResponse["featured_artists"] as List<dynamic>)
          .map((e) => Artist.fromApiResponse(JsonEncoder().convert(e))),
      album: Album.fromApiResponse(
          JsonEncoder().convert(parsedApiResponse["album"])),
      genres: parsedApiResponse["genres"],
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
    );
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
    if (rawApiResponse == null) return null;
    dynamic parsedApiResponse = JsonDecoder().convert(rawApiResponse);
    return Album(
        id: parsedApiResponse["id"],
        title: parsedApiResponse["title"],
        artist: Artist.fromApiResponse(
            JsonEncoder().convert(parsedApiResponse["artist"])),
        featured_artists:
            (parsedApiResponse["featured_artists"] as List<dynamic>)
                .map((e) => Artist.fromApiResponse(JsonEncoder().convert(e))),
        genres: parsedApiResponse["genres"],
        releaseDate: DateTime.parse(parsedApiResponse["releaseDate"]),
        spotifyUri: parsedApiResponse["spotifyUri"],
        appleUri: parsedApiResponse["appleUri"],
        soundcloudUri: parsedApiResponse["soundcloudUri"],
        language: null,
        // TODO
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
        timeZone: parsedApiResponse["timeZone"]);
  }
}
