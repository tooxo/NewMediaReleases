import 'dart:convert';

import 'package:new_media_releases/music/music_types.dart';
import 'package:sqflite/sqflite.dart';

const String table_songs = "TBL_SONGS";

class DatabaseHandler {
  Database database;

  Future<void> open() async {
    this.database = await openDatabase("database.db", version: 1,
        onCreate: (Database db, int version) async {
      await db.rawQuery('''
    -- create table
CREATE TABLE IF NOT EXISTS TBL_ALBUMS
(
    ID               TEXT PRIMARY KEY UNIQUE,
    TITLE            TEXT,
    ARTIST_ID        TEXT,
    FEATURED_ARTISTS TEXT,
    GENRES           TEXT,
    RELEASE_DATE     TEXT,
    SPOTIFY_URI      TEXT,
    APPLE_URI        TEXT,
    SOUNDCLOUD_URI   TEXT,
    LANGUAGE         TEXT,
    ART_URL          TEXT,
    TRACKS           TEXT
);

-- insert values
REPLACE INTO TBL_ALBUMS(ID, TITLE, ARTIST_ID, FEATURED_ARTISTS, GENRES, RELEASE_DATE, SPOTIFY_URI, APPLE_URI,
                    SOUNDCLOUD_URI, LANGUAGE, ART_URL, TRACKS)
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
    
    ''');
      await db.rawQuery('''
    -- create table
CREATE TABLE IF NOT EXISTS ARTISTS
(
    ID          TEXT PRIMARY KEY UNIQUE,
    NAME        TEXT,
    SPOTIFY_URI TEXT,
    APPLE_URI   TEXT,
    LANGUAGE    TEXT,
    ART_URL     TEXT,
    TIMEZONE    INTEGER
);

-- insert values
REPLACE INTO ARTISTS(ID, NAME, SPOTIFY_URI, APPLE_URI, LANGUAGE, ART_URL, TIMEZONE)
VALUES (?, ?, ?, ?, ?, ?, ?);  
    ''');
      await db.rawQuery('''
      CREATE TABLE IF NOT EXISTS TBL_SONGS
(
    ID               TEXT PRIMARY KEY NOT NULL UNIQUE,
    TITLE            TEXT,
    ARTIST_ID        TEXT,
    FEATURED_ARTISTS TEXT,
    ALBUM_ID         TEXT,
    GENRES           TEXT,
    RELEASE_DATE     TEXT,
    SPOTIFY_URI      TEXT,
    APPLE_URI        TEXT,
    SOUNDCLOUD_URI   TEXT,
    YOUTUBE_ID       TEXT,
    LANGUAGE         TEXT,
    TRACK_NUMBER     INTEGER,
    PREVIEW_URL      TEXT,
    ART_URL          TEXT,
    IS_SINGLE        INTEGER
);

REPLACE INTO TBL_SONGS(ID, TITLE, ARTIST_ID, FEATURED_ARTISTS, ALBUM_ID, GENRES, RELEASE_DATE, SPOTIFY_URI, APPLE_URI,
                   SOUNDCLOUD_URI, YOUTUBE_ID, LANGUAGE, TRACK_NUMBER, PREVIEW_URL, ART_URL, IS_SINGLE)
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
      ''');
    });
  }

  void upsertManySongs(List<Song> values,
      {String albumId, String artistId}) async {
    Batch batch = database.batch();
    for (Song value in values)
      batch.execute(
          '''REPLACE INTO TBL_SONGS(ID, TITLE, ARTIST_ID, FEATURED_ARTISTS, 
                                    ALBUM_ID, GENRES, RELEASE_DATE, SPOTIFY_URI,
                                    APPLE_URI, SOUNDCLOUD_URI, YOUTUBE_ID, 
                                    LANGUAGE, TRACK_NUMBER, PREVIEW_URL, ART_URL, 
                                    IS_SINGLE)
             VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
          ''',
          [
            value.id,
            value.title,
            artistId != null ? artistId : value.artist?.id,
            DatabaseHelper.serializeFeaturedArtists(value.featured_artists),
            albumId != null ? albumId : value.album?.id,
            JsonEncoder().convert(value.genres),
            value.releaseDate?.toIso8601String(),
            value.spotifyUri,
            value.appleUri,
            value.soundcloudUri,
            value.youtubeUrl,
            value.language.toString(),
            value.trackNumber,
            value.previewUrl,
            value.artUrl,
            value.single ? 1 : 0
          ]);
    await batch.commit(noResult: true, continueOnError: true);
  }

  Future<void> upsertManyAlbums(List<Album> values) async {
    Batch b = database.batch();
    for (Album value in values)
      b.execute('''
        REPLACE INTO TBL_ALBUMS(ID, TITLE, ARTIST_ID, FEATURED_ARTISTS, GENRES, 
                                RELEASE_DATE, SPOTIFY_URI, APPLE_URI, 
                                SOUNDCLOUD_URI, LANGUAGE, ART_URL, TRACKS)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
        ''', [
        value.id,
        value.title,
        value.artist?.id,
        DatabaseHelper.serializeFeaturedArtists(value.featured_artists),
        JsonEncoder().convert(value.genres),
        value.releaseDate?.toIso8601String(),
        value.spotifyUri,
        value.appleUri,
        value.soundcloudUri,
        value.language.toString(),
        value.artUrl,
        DatabaseHelper.serializeAlbumTracks(value.tracks)
      ]);
    await b.commit(noResult: true, continueOnError: true);
  }

  Future<Artist> getArtistFromDatabase(String artistId) async {
    dynamic response = await database
        .query("TBL_ARTISTS", where: "ID = ?", whereArgs: [artistId]);
    if (response.isEmpty) return null;
    Map m = Map();
    response.first.forEach((key, value) => m[key.toLowerCase()] = value);
    return Artist.fromApiResponse(JsonEncoder().convert(m));
  }

  Future<List<Song>> getAlbumTracksFromDatabase(String albumId,
      {Artist artist}) async {
    List<Map<String, dynamic>> test = await database
        .query("TBL_SONGS", where: 'ALBUM_ID = ?', whereArgs: [albumId]);
    if (test.isEmpty) return null;
    return test
        .map((e) async {
          Map map = Map();
          e.forEach((key, value) => map[key.toLowerCase()] = value);
          if (artist != null) map["artist"] = artist;
          map["featured_artists"] =
              JsonDecoder().convert(map["featured_artists"]).map((e) async {
            return await getArtistFromDatabase(e);
          });
          map["genres"] = JsonDecoder().convert(map["genres"]);

          return map;
        })

        .map((e) => Song.fromApiResponse(e))
        .toList();
  }
}

class DatabaseHelper {
  static String serializeFeaturedArtists(List<Artist> featuredArtists) {
    return JsonEncoder().convert(featuredArtists.map((e) => e.id).toList());
  }

  static String serializeAlbumTracks(List<Song> tracks) {
    if (tracks == null) return null;
    return JsonEncoder().convert(tracks.map((e) => e.id).toList());
  }
}
