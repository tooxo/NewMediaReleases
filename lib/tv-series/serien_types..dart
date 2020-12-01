import 'package:new_media_releases/movies/movie_types.dart';

class Serie {
  String title;
  String artUrl;
  int fsk;
  int episodes;
  int seasons;
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

  Serie(
      {this.title,
      this.artUrl,
      this.fsk,
      this.episodes,
      this.seasons,
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
