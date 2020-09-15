import 'package:http/http.dart' as http;

const String base_url = "http://192.168.178.20:8888/music/";

Future<String> getAroundSongs() async {
  http.Response res = await http.get(
    base_url + "around",
  );
  return res.body;
}
