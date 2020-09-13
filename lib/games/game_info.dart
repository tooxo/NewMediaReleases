import 'package:NewMediaReleases/open_link.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

import '../Icons.dart';
import 'game_types.dart';

class GameInfo extends StatelessWidget {
  final Game entry;

  final String studio = "2k Boston | 2K Games";
  final String locationYear = "USA, 2007";
  final int time = 14; //optional
  final int age = 18;
  final String genre = "First Person Shooter";
  final String mode = "Singleplayer";
  final DateTime date = null;
  final String score = "Metacritic 96/100";

  final String title = "Bioshock";

  final bool pc = true;
  final bool xbox = true;
  final bool playstation = true;
  final bool nintendo = false;

  final String description =
      "BioShock is a 2007 first-person shooter game developed by 2K Boston (later Irrational Games) and 2K Australia, and published by 2K Games. It is the first game in the BioShock series. The game's concept was developed by Irrational's creative lead, Ken Levine, and incorporates ideas by 20th century dystopian and utopian thinkers such as Ayn Rand, George Orwell, and Aldous Huxley, as well as historical figures such as John D. Rockefeller and Walt Disney. The game is considered a spiritual successor to the System Shock series, on which many of Irrational's team, including Levine, had worked previously.";

  const GameInfo({Key key, this.entry}) : super(key: key);

  String get url =>
      "https://upload.wikimedia.org/wikipedia/en/6/6d/BioShock_cover.jpg";

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
                            Icons.people,
                            size: 28,
                          ),
                        ),
                        Text(
                          studio,
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
                          "ca. $time h",
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
                            Icons.videogame_asset,
                            size: 28,
                          ),
                        ),
                        Text(
                          mode,
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
                  Icon(
                    Icons.computer,
                    color: this.pc ? Colors.black : Colors.grey,
                  ),
                  Icon(
                    Font.playstation,
                    color: this.playstation ? Colors.black : Colors.grey,
                  ),
                  Icon(
                    Font.xbox,
                    color: this.xbox ? Colors.black : Colors.grey,
                  ),
                  Icon(
                    Font.nintendoswitch,
                    color: this.nintendo ? Colors.black : Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
