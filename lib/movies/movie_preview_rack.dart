import 'package:new_media_releases/custom_grid.dart';
import 'package:new_media_releases/movies/movie_types.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'movie_preview.dart';

class MoviePreviewRack extends StatelessWidget {
  final List<Movie> entries;
  final DateTime releaseDate;

  MoviePreviewRack(this.entries, this.releaseDate);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 8, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                DateFormat("dd.MM.yyyy").format(this.releaseDate),
                textAlign: TextAlign.end,
                style: GoogleFonts.nunitoSans(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 8),
          child: Divider(
            thickness: 1.5,
            color: Colors.white,
          ),
        ),
        Container(
          child: CustomGrid(
            [for (Movie entry in this.entries) MoviePreviewWidget(entry)],
          ),
        )
      ],
    );
  }
}
