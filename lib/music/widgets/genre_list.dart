import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Genre {
  final String name;
  final bool important;

  const Genre({this.name, this.important});
}

class GenreList extends StatelessWidget {
  static const List<String> importantGenres = [
    "Country",
    "Pop",
    "R&B",
    "Rap",
    "Rock"
  ];

  final List<String> genres;

  const GenreList(this.genres);

  List<Genre> translatedGenres() {
    List<Genre> genres = this
        .genres
        .map((e) => new Genre(name: e, important: importantGenres.contains(e)))
        .toList();
    genres.sort((Genre a, Genre b) => b.important ? 1 : -1);
    return genres;
  }

  @override
  Widget build(BuildContext context) {
    List<Genre> translated = translatedGenres();
    translated = translated.sublist(0, min(translated.length, 3));
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (Genre e in translated)
          Row(
            children: [
              Text(
                e.name,
                style: GoogleFonts.nunitoSans(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight:
                        e.important ? FontWeight.bold : FontWeight.normal),
              ),
              e != translated.last
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Text(
                        "·",
                        style: GoogleFonts.nunitoSans(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  : Container()
            ],
          )
      ],
    );
  }
}
