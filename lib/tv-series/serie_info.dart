import 'package:NewMediaReleases/open_link.dart';
import 'package:NewMediaReleases/tv-series/serien_types..dart';
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
  final String score = "5/10";

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
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Icon(
                            Font.planet_earth,
                            size: 28,
                          ),
                        ),
                        Text(
                          locationYear,
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Icon(
                            Font.clock_circular_outline,
                            size: 28,
                          ),
                        ),
                        Text(
                          "$seasons Seasons | $episodes Episodes",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Icon(
                            Font.information,
                            size: 28,
                          ),
                        ),
                        Text(
                          "FSK " + "$age",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Icon(
                            Font.menu__1_,
                            size: 28,
                          ),
                        ),
                        Text(
                          genre,
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Icon(
                            Icons.calendar_today,
                            size: 28,
                          ),
                        ),
                        Text(
                          DateFormat("dd.MM.yyyy").format(entry.releaseDate),
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Icon(
                            Icons.star_border,
                            size: 28,
                          ),
                        ),
                        Text(
                          score,
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 30, 25, 0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Directed by ",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "$director",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Produced by ",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "$producer",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Starring: ",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "$actor",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 20, 25, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Staffel 1",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text("12 Folgen", style: TextStyle(fontSize: 20))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 20, 25, 0),
              child: Text(
                description,
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    onPressed: this.netflix
                        ? () {
                            OpenLink.openlink(netflixLink);
                          }
                        : null,
                    icon: Icon(
                      Font.netflix,
                      color: this.netflix ? Colors.black : Colors.grey,
                    ),
                  ),
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
                    child: Text("Disney+", style: TextStyle(color: this.disney ? Colors.black : Colors.grey, fontSize: 15, fontWeight: FontWeight.w900),),
                  ),
                  IconButton(
                    onPressed: this.hulu
                        ? () {
                            OpenLink.openlink(huluLink);
                          }
                        : null,
                    icon: Icon(
                      Font.hulu,
                      color: this.hulu ? Colors.black : Colors.grey,
                    ),
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
