import 'dart:convert';

import 'package:http/http.dart' as http;

const String base_url = "https://releases.tillschulte.de/music/";

Future<String> getAroundSongs(String country) async {
  http.Response res = await http.get(
    base_url + "around?country=" + country,
  );
  return Utf8Decoder().convert(res.bodyBytes);
}

Future<String> getTracksFromAlbum(String albumId) async {
  http.Response res = await http.get(base_url + "albums/$albumId");
  return Utf8Decoder().convert(res.bodyBytes);
}

Future<String> loadMoreEntriesBottom(
    DateTime dateFrom, String lastId, String country) async {
  String url = base_url +
      "to?y=${dateFrom.year}&m=${dateFrom.month}&d=${dateFrom.day}&limit=20&last_id=$lastId&country=$country";
  http.Response res = await http.get(url);
  return Utf8Decoder().convert(res.bodyBytes);
}

Future<String> loadMoreEntriesTop(
    DateTime dateFrom, String lastId, String country) async {
  String url = base_url +
      "from?y=${dateFrom.year}&m=${dateFrom.month}&d=${dateFrom.day}&limit=20&last_id=$lastId&country=$country";
  http.Response res = await http.get(url);
  return Utf8Decoder().convert(res.bodyBytes);
}

Future<String> getSpecificAlbum(String albumId) async {
  String url = base_url + "albums/$albumId";
  http.Response res = await http.get(url);
  return Utf8Decoder().convert(res.bodyBytes);
}

Future<String> getSpecificSong(String songId) async {
  String url = base_url + "songs/$songId";
  http.Response res = await http.get(url);
  return Utf8Decoder().convert(res.bodyBytes);
}

Future<String> searchRemote(String term) async {
  assert(term != null);
  String url = base_url + "search?term=$term";
  http.Response res = await http.get(url);
  return Utf8Decoder().convert(res.bodyBytes);
}
