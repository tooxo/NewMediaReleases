import 'package:NewMediaReleases/custom_grid.dart';
import 'package:NewMediaReleases/music/music_preview.dart';
import 'package:NewMediaReleases/music/music_types.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sticky_infinite_list/sticky_infinite_list.dart';

class MusicPreviewRack {
  final List<MusicalEntry> entries;
  final DateTime releaseDate;

  MusicPreviewRack(this.entries, this.releaseDate);

  InfiniteListItem<int> build(BuildContext context) {
    return InfiniteListItem(
      headerBuilder: (context) => Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    DateFormat("dd. MM. yyyy").format(this.releaseDate),
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
              padding: const EdgeInsets.only(top: 8, right: 8.0, left: 8),
              child: Divider(
                thickness: 2,
                color: Colors.black,
                height: 0,
              ),
            ),
          ],
        ),
      ),
      contentBuilder: (context) => Container(
        child: CustomGrid(
          [for (MusicalEntry entry in this.entries) MusicPreviewWidget(entry)],
        ),
      ),
    );
  }
}
