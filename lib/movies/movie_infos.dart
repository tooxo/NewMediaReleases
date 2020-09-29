import 'package:NewMediaReleases/movies/movie_types.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

import '../Icons.dart';
import '../open_link.dart';

class MovieInfos extends StatelessWidget {
  final Movie entry;

  final int weekSinceStart = 2;
  final String locationYear = "USA, 2020";
  final int length = 150;
  final int age = 18;
  final String genre = "Action | Thriller";
  final DateTime date = null;
  final String score = "5/10";

  final String title = "Tenet";

  final String director = "Christopher Nolan";
  final String producer = "Christopher Nolan";
  final String actor = "John David Washington";

  final bool netflix = true;
  final bool amazon = true;
  final bool disney = true;
  final bool hulu = true;

  final String netflixLink = "https://www.netflix.com/de/";
  final String amazonLink = "";
  final String disneyLink = "";
  final String huluLink = "";

  final String youtubeLink = "";
  final String imdbLink = "";
  final String rottenLink = "";

  final String description =
      "Tenet is a 2020 spy film written and directed by Christopher Nolan, who produced it with Emma Thomas. A co-production between the United Kingdom and United States, it stars John David Washington, Robert Pattinson, Elizabeth Debicki, Dimple Kapadia, Michael Caine, and Kenneth Branagh. The plot follows a secret agent (Washington) as he manipulates the flow of time to prevent World War III.";

  const MovieInfos({Key key, this.entry}) : super(key: key);

  String get url =>
      "https://upload.wikimedia.org/wikipedia/en/1/14/Tenet_movie_poster.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
                  height: 230,
                  width: 230,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: this.url.isNotEmpty
                          ? NetworkImage(this.url)
                          : AssetImage("assets/image/image_not_found.jpg"),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  ),
                  IconStats(
                    text: "$weekSinceStart.Woche",
                    icon: Font.play_button,
                  ),
                  IconStats(
                    text: locationYear,
                    icon: Font.planet_earth,
                  ),
                  IconStats(
                    text: "$length min",
                    icon: Font.clock_circular_outline,
                  ),
                  IconStats(
                    text: "FSK " + "$age",
                    icon: Font.information,
                  ),
                  IconStats(
                    text: genre,
                    icon: Font.menu__1_,
                  ),
                  IconStats(
                    text: DateFormat("dd.MM.yyyy").format(entry.releaseDate),
                    icon: Icons.calendar_today,
                  ),
                  IconStats(
                    text: score,
                    icon: Icons.star_border,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Crew(crew: "Directed by $director"),
            ),
            Crew(crew: "Produced by $producer"),
            Crew(crew: "Starring: $actor"),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 20, 25, 0),
              child: Text(
                description,
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Link(
                      platform: true,
                      platformLink: youtubeLink,
                      plattformIcon: Font.youtube,
                      iconSize: 40),
                  Link(
                      platform: true,
                      platformLink: imdbLink,
                      plattformIcon: Font.imdb,
                      iconSize: 40),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Link(
                      platform: netflix,
                      platformLink: netflixLink,
                      plattformIcon: Font.netflix,
                      iconSize: 30),
                  IconButton(
                    padding: EdgeInsets.fromLTRB(1, 0, 45, 38),
                    onPressed: this.amazon
                        ? () {
                            OpenLink.openlink(amazonLink);
                          }
                        : null,
                    icon: Icon(
                      Font.primevideo,
                      size: 70,
                      color: this.amazon ? Colors.black : Colors.grey,
                    ),
                  ),
                  MaterialButton(
                    onPressed: this.disney
                        ? () {
                      OpenLink.openlink(disneyLink);
                    }
                        : null,
                    child: Text(
                      "Disney+",
                      style: TextStyle(
                          color: this.disney ? Colors.black : Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Link(
                    platform: hulu,
                    platformLink: huluLink,
                    plattformIcon: Font.hulu,
                    iconSize: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Crew extends StatelessWidget {
  const Crew({
    Key key,
    @required this.crew,
  }) : super(key: key);

  final String crew;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
      child: Row(
        children: <Widget>[
          Text(
            crew,
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

class Link extends StatelessWidget {
  const Link({
    Key key,
    @required this.platform,
    @required this.platformLink,
    @required this.plattformIcon,
    @required this.iconSize,
  }) : super(key: key);

  final bool platform;
  final String platformLink;
  final IconData plattformIcon;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: this.platform
          ? () {
              OpenLink.openlink(platformLink);
            }
          : null,
      icon: Icon(
        plattformIcon,
        size: iconSize,
        color: this.platform ? Colors.black : Colors.grey,
      ),
    );
  }
}

class IconStats extends StatelessWidget {
  const IconStats({Key key, @required this.text, @required this.icon})
      : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Icon(
              icon,
              size: 28,
            ),
          ),
          Text(
            "$text",
            style: TextStyle(color: Colors.black, fontSize: 20),
          )
        ],
      ),
    );
  }
}
