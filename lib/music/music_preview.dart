import 'dart:math';

import 'package:NewMediaReleases/music/music_details.dart';
import 'package:flutter/material.dart';

import 'music_types.dart';

class CircularImage extends StatelessWidget {
  final String url;

  CircularImage(this.url);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: this.url.isNotEmpty
                ? NetworkImage(this.url)
                : AssetImage("assets/image/image_not_found.jpg"),
          ),
        ),
      ),
    );
  }
}

class MusicPreviewImageWidget extends StatelessWidget {
  final String url;
  final bool isSingle;

  MusicPreviewImageWidget(this.url, this.isSingle);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double requiredDegree = (pi * 45 / 180);
        int radius = (constraints.maxWidth / 2).floor();
        double iconDiameter = constraints.maxWidth * 0.2;

        double coord = radius * cos(requiredDegree) + radius - iconDiameter / 2;

        return Stack(
          children: <Widget>[
            CircularImage(this.url),
            Positioned(
              left: coord,
              top: coord,
              child: Container(
                width: iconDiameter,
                height: iconDiameter,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: FittedBox(
                    child: Icon(
                      this.isSingle ? Icons.music_note : Icons.album,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

class MusicPreviewWidget extends StatelessWidget {
  final MusicalEntry entry;

  MusicPreviewWidget(this.entry);

  void open(BuildContext context) async {
    await Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MusicDetails(entry)));
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double width = min(constraints.maxWidth, constraints.maxHeight);

      return InkWell(
        onTap: () => open(context),
        child: Column(
          children: <Widget>[
            Container(
              width: width,
              height: width,
              child: MusicPreviewImageWidget(
                  this.entry.artUrl, this.entry is Song),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Column(
                children: <Widget>[
                  Text(
                    this.entry.title,
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    this.entry.artist.name,
                    style: TextStyle(
                        fontFamily: 'Lato', fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
