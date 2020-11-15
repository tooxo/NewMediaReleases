import 'dart:convert';

import 'package:http/http.dart' as http;

const String base_url = "https://releases.tillschulte.de/movies/";

Future<String> getLatestMovies() async {
  http.Response res = await http.get(
    base_url + "latest",
  );
  return Utf8Decoder().convert(res.bodyBytes);
}
