import 'dart:convert';

class Movie {
  String id;
  String title;
  String artUrl;
  int runtime;
  int budget;
  bool isAdult;
  String genre;
  int timezone;
  DateTime releaseDate;
  double rating;
  String country;
  MoviePerson director;
  List<MoviePerson> producer;
  List<MoviePerson> actor;
  String description;
  String youtubeUrl;
  String imdbURl;
  String rottenTomatoesUrl;
  String netflixUrl;
  String disneyUrl;
  String primeUrl;
  String huluUrl;

  

  Movie(
      {this.id,
      this.title,
      this.artUrl,
      this.runtime,
      this.budget,
      this.isAdult,
      this.genre,
      this.timezone,
      this.releaseDate,
      this.country,
      this.rating,
      this.director,
      this.producer,
      this.actor,
      this.description,
      this.youtubeUrl,
      this.imdbURl,
      this.rottenTomatoesUrl,
      this.netflixUrl,
      this.disneyUrl,
      this.primeUrl,
      this.huluUrl});

  String getScaledUrl(int width) {
    String end = artUrl.split("/").last;
    return "https://image.tmdb.org/t/p/w$width/$end";
  }

  static Movie fromApiResponse(String rawApiResponse) {
    if (rawApiResponse == "null" || rawApiResponse == null) return null;
    dynamic parsedApiResponse = JsonDecoder().convert(rawApiResponse);
    return Movie(
        //id: parsedApiResponse["id"],
        title: parsedApiResponse["title"],
        releaseDate: parsedApiResponse["releaseDate"] == null
            ? null
            : DateTime.parse(parsedApiResponse["releaseDate"]),
        isAdult: parsedApiResponse["fsk"],
        imdbURl: parsedApiResponse["imdb_link"],
        description: parsedApiResponse["description"],
        rating: parsedApiResponse["rating"],
        budget: parsedApiResponse["budget"],
        director: MoviePerson.fromApiResponse(JsonEncoder().convert(parsedApiResponse["director"])),
        actor: parsedApiResponse["actor"] != null
            ? (parsedApiResponse["actor"] as List<dynamic>)
                .map((e) =>
                    MoviePerson.fromApiResponse(JsonEncoder().convert(e)))
                .toList()
            : null,
        country: parsedApiResponse["country"],
        runtime: parsedApiResponse["runtime"],
        genre: parsedApiResponse["genre"].toString(),
        artUrl: parsedApiResponse["artUrl"]);
  }
}

class MoviePerson {
  String name;
  String pic;

  MoviePerson({
    this.name,
    this.pic,
  });

  static MoviePerson fromApiResponse(String rawApiResponse) {
    if (rawApiResponse == "null" || rawApiResponse == null) return null;
    dynamic parsedApiResponse = JsonDecoder().convert(rawApiResponse);
    return MoviePerson(
        name: parsedApiResponse["name"], pic: parsedApiResponse["pic"]);
  }
}
