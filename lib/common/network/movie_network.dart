import 'package:http/http.dart' as http;

const String base_url = "http://192.168.0.17:8888/movies/";

Future<String> getLatestMovies() async {
  http.Response res = await http.get(
    base_url + "latest",
  );
  return res.body;
}
