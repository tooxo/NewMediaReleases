import 'dart:ui';

import 'package:NewMediaReleases/utils/widgets.dart';
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
  final String rating = "Metacritic 96/100";

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
                child: Hero(
                  tag: "game",
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
                    text: studio,
                    icon: Icons.people,
                  ),
                  IconStats(
                    text: locationYear,
                    icon: Font.planet_earth,
                  ),
                  IconStats(
                    text: "ca. $time h",
                    icon: Icons.people,
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
                    text: mode,
                    icon: Icons.videogame_asset,
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
            Description(
              description: description
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.computer,
                    color: this.pc ? Colors.white : Colors.grey,
                  ),
                  Icon(
                    Font.playstation,
                    color: this.playstation ? Colors.white : Colors.grey,
                  ),
                  Icon(
                    Font.xbox,
                    color: this.xbox ? Colors.white : Colors.grey,
                  ),
                  Icon(
                    Font.nintendoswitch,
                    color: this.nintendo ? Colors.white : Colors.grey,
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
