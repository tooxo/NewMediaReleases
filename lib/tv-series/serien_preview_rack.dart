import 'package:NewMediaReleases/custom_grid.dart';
import 'package:NewMediaReleases/tv-series/serien_preview.dart';
import 'package:NewMediaReleases/tv-series/serien_types..dart';
import 'package:flutter/material.dart';
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
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w800,
                    fontSize: 20),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 8),
          child: Divider(
            thickness: 2,
            color: Colors.black,
          ),
        ),
        Container(
          child: CustomGrid(
            [
              for (Serie entry in this.entries)
                SerienPreviewWidget(entry)
            ],
          ),
        )
      ],
    );
  }
}
