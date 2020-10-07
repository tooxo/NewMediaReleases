import 'package:NewMediaReleases/common/detail_screen.dart';
import 'package:NewMediaReleases/movies/movie_types.dart';
import 'package:NewMediaReleases/utils/date.dart';
import 'package:NewMediaReleases/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../Icons.dart';
import '../open_link.dart';

class MovieInfos extends StatelessWidget {
  final Movie entry;

  final bool netflix = true;
  final bool amazon = false;
  final bool disney = true;
  final bool hulu = true;

  final String netflixLink = "https://www.netflix.com/de/";
  final String amazonLink = "";
  final String disneyLink = "";
  final String huluLink = "";

  final String youtubeLink = "";
  final String rottenLink = "";

  const MovieInfos({Key key, this.entry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Material(
          color: Colors.transparent,
          child: Text(
            "Movie",
            style: GoogleFonts.nunitoSans(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            if (entry.artUrl != null)
              (Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Hero(
                    tag: entry.id,
                    child: GestureDetector(
                      child: Container(
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: entry.artUrl.isNotEmpty
                                ? NetworkImage(entry.artUrl)
                                : AssetImage(
                                    "assets/image/image_not_found.jpg"),
                          ),
                        ),
                      ),
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (con) => DetailScreen(
                            entry.artUrl,
                            tag: entry.id,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ))
            else
              (Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Container(
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/image_not_found.jpg"),
                      ),
                    ),
                  ),
                ),
              )),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 25, 0),
              child: Text(
                entry.title,
                style: GoogleFonts.nunitoSans(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            FancyDivider(),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  ),
                  isInFuture(entry.releaseDate) == false
                      ? IconStats(
                          text: (entry.releaseDate
                                          .difference(DateTime.now())
                                          .inDays /
                                      7)
                                  .abs()
                                  .floor()
                                  .toString() +
                              ". Woche",
                          icon: Font.play_button,
                        )
                      : IconStats(
                          text: "to be released",
                          icon: Font.play_button,
                        ),
                  entry.country != null
                      ? IconStats(
                          text: entry.country,
                          icon: Font.planet_earth,
                        )
                      : IconStats(
                          text: "n/a",
                          icon: Font.planet_earth,
                        ),
                  entry.runtime == null
                      ? IconStats(
                          text: entry.runtime.toString() + " min",
                          icon: Font.clock_circular_outline,
                        )
                      : IconStats(
                          text: "n/a",
                          icon: Font.clock_circular_outline,
                        ),
                  entry.budget != 0
                      ? IconStats(
                          text: NumberFormat.compactSimpleCurrency(
                            decimalDigits: 3,
                          ).format(entry.budget),
                          icon: MdiIcons.cashUsdOutline,
                        )
                      : IconStats(
                          text: "n/a",
                          icon: MdiIcons.cashUsdOutline,
                        ),
                  IconStats(
                    text: entry.isAdult.toString(),
                    icon: Font.information,
                  ),
                  IconStats(
                    text: entry.genre,
                    icon: Font.menu__1_,
                  ),
                  IconStats(
                    text: DateFormat("dd.MM.yyyy").format(entry.releaseDate),
                    icon: Icons.calendar_today,
                  ),
                  entry.rating != 0
                      ? IconStats(
                          text: entry.rating.toString(),
                          icon: Icons.star_border,
                        )
                      : IconStats(
                          text: "n/a",
                          icon: Icons.star_border,
                        ),
                ],
              ),
            ),
            FancyDivider(),
            entry.director != null
                ? Crew(crew: "Directed by " + entry.director.name)
                : Container(),
            for (var x in this.entry.actor)
              x != null
                  ? Crew(
                      crew: "Starring: " + x.name,
                    )
                  : Container(),
            if ((entry.director != null) && (entry.actor != null))
              FancyDivider(),
            Description(description: entry.description),
            if (entry.description != null) FancyDivider(),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                      platformLink: entry.imdbURl,
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
                      color: this.amazon ? Colors.white : Colors.grey,
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
