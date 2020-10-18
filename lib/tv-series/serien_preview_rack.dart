import 'package:NewMediaReleases/custom_grid.dart';
import 'package:NewMediaReleases/tv-series/serien_preview.dart';
import 'package:NewMediaReleases/tv-series/serien_types..dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class SerienPreviewRack extends StatelessWidget {
  final List<Serie> entries;
  final DateTime releaseDate;

  SerienPreviewRack(this.entries, this.releaseDate);

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
            [for (Serie entry in this.entries) SerienPreviewWidget(entry)],
          ),
        )
      ],
    );
  }
}
