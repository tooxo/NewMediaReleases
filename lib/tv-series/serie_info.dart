import 'package:new_media_releases/open_link.dart';
import 'package:new_media_releases/tv-series/serien_types..dart';
import 'package:new_media_releases/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

import '../Icons.dart';

class SerieInfo extends StatelessWidget {
  final Serie entry;

  final String locationYear = "USA, 2020";
  final int episodes = 20;
  final int seasons = 4;
  final int age = 18;
  final String genre = "Action | Thriller";
  final DateTime date = null;
  final String rating = "5/10";

  final String title = "Black Mirror";

  final String director = "Christopher Nolan";
  final String producer = "Christopher Nolan";
  final String actor = "John David Washington";

  final bool netflix = true;
  final bool amazon = true;
  final bool disney = false;
  final bool hulu = false;
  final bool hbo = false;

  final String netflixLink = "https://www.netflix.com/de/";
  final String amazonLink = "";
  final String disneyLink = "";
  final String huluLink = "";
  final String hboLink = "";

  final String description =
      "Black Mirror is a British dystopian science fiction anthology television series created by Charlie Brooker. He and Annabel Jones are the programme's showrunners. It examines modern society, particularly with regard to the unanticipated consequences of new technologies. Episodes are standalone, usually set in an alternative present or the near future, often with a dark and satirical tone, although some are more experimental and lighter.";

  const SerieInfo({Key key, this.entry}) : super(key: key);

  String get url =>
      "https://upload.wikimedia.org/wikipedia/en/2/24/BlackMirrorTitleCard.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
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
                  IconStats(
                    text: locationYear,
                    icon: Font.planet_earth,
                  ),
                  IconStats(
                    text: "$seasons Seasons | $episodes Episodes",
                    icon: Font.clock_circular_outline,
                  ),
                  IconStats(
                    text: "FSK $age",
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
                    text: rating,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Staffel 1",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text("12 Folgen",
                      style: TextStyle(fontSize: 20, color: Colors.white))
                ],
              ),
            ),
            Description(description: description),
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
                            OpenLink.openLink(amazonLink);
                          }
                        : null,
                    icon: Icon(
                      Font.primevideo,
                      size: 70,
                      color: this.amazon ? Colors.white : Colors.grey,
                    ),
                  ),
                  MaterialButton(
                    onPressed: this.disney
                        ? () {
                            OpenLink.openLink(disneyLink);
                          }
                        : null,
                    child: Text(
                      "Disney+",
                      style: TextStyle(
                          color: this.disney ? Colors.white : Colors.grey,
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
