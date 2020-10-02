import 'dart:convert';

import 'package:NewMediaReleases/music/music_types.dart';
import 'package:sqflite/sqflite.dart';

const String table_songs = "TBL_SONGS";

class DatabaseHandler {
  Database database;

  open() async {
    this.database = await openDatabase("database.db");
  }

  void upsertManySongs(List<Song> values) async {
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
            value.artist?.id,
            DatabaseHelper.serializeFeaturedArtists(value.featured_artists),
            value.album?.id,
            JsonEncoder().convert(value.genres),
            value.releaseDate?.toIso8601String(),
            value.spotifyUri,
            value.appleUri,
            value.soundcloudUri,
            value.youtubeId,
            value.language.toString(),
            value.trackNumber,
            value.previewUrl,
            value.artUrl,
            value.single ? 1 : 0
          ]);
    await batch.commit(noResult: true, continueOnError: true);
  }

  void upsertManyAlbums(List<Album> values) async {
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
}

class DatabaseHelper {
  static String serializeFeaturedArtists(List<Artist> featuredArtists) {
    return JsonEncoder().convert(featuredArtists.map((e) => e.id));
  }

  static String serializeAlbumTracks(List<Song> tracks) {
    if (tracks == null) return null;
    return JsonEncoder().convert(tracks.map((e) => e.id));
  }
}
