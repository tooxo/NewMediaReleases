class Movie {

  String title;
  String artUrl;
  int length;
  int fsk;
  String genre;
  int timezone;
  DateTime releaseDate;
  int rating;
  List<MoviePerson> director;
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

  Movie({this.title,
    this.artUrl,
    this.length,
    this.fsk,
    this.genre,
    this.timezone,
    this.releaseDate,
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
}

class MoviePerson {
  String name;
  String pic;

  MoviePerson({
    this.name,
    this.pic,
  });
}
