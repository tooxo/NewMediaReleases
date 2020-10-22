import 'package:http/http.dart' as http;

const String base_url = "http://192.168.0.17:8888/music/";

Future<String> getAroundSongs() async {
  http.Response res = await http.get(
    base_url + "around",
  );
  return Utf8Decoder().convert(res.bodyBytes);
}

Future<String> getTracksFromAlbum(String albumId) async {
  http.Response res = await http.get(base_url + "albums/$albumId");
  return Utf8Decoder().convert(res.bodyBytes);
}

Future<String> loadMoreEntriesBottom(DateTime dateFrom) async {
  // build url
  String url = base_url +
      "to?y=${dateFrom.year}&m=${dateFrom.month}&d=${dateFrom.day}&limit=20";
  http.Response res = await http.get(url);
  return Utf8Decoder().convert(res.bodyBytes);
}

Future<String> loadMoreEntriesTop(DateTime dateFrom) async {
  String url = base_url +
      "from?y=${dateFrom.year}&m=${dateFrom.month}&d=${dateFrom.day}&limit=20";
  http.Response res = await http.get(url);
  return Utf8Decoder().convert(res.bodyBytes);
}
