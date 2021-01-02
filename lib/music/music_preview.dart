import 'dart:math';

import 'package:new_media_releases/music/music_details.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'music_types.dart';

class CircularImage extends StatelessWidget {
  final String url;

  CircularImage(
    this.url,
  );

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
  final bool isOnFire;

  const MusicPreviewImageWidget(this.url, this.isSingle, this.isOnFire);

  Widget loadingIndicator(context, url) => Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(Colors.white),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double requiredDegree = (pi * 45 / 180);
        int radius = (constraints.maxWidth / 2).floor();
        double iconDiameter = constraints.maxWidth * 0.275;

        double coord = radius * cos(requiredDegree) + radius - iconDiameter / 2;

        return Stack(
          children: <Widget>[
            Container(
              decoration: this.isOnFire
                  ? BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.redAccent, width: 1),
                    )
                  : null,
              child: ClipOval(
                child: this.url != ""
                    ? CachedNetworkImage(
                        imageUrl: this.url,
                        errorWidget: (context, url, error) => Center(
                          child: Text(
                            "!",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        placeholder: loadingIndicator,
                      )
                    : Image.asset(
                        "assets/image/image_not_found_small.jpg",
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            Positioned(
              left: coord,
              top: coord,
              child: Container(
                width: iconDiameter,
                height: iconDiameter,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade900,
                  // border: Border.all(color: Colors.white)
                ),
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
            ),
            this.isOnFire
                ? Positioned(
                    right: coord,
                    top: coord,
                    child: Container(
                      width: iconDiameter,
                      height: iconDiameter,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade900,
                          border: Border.all(color: Colors.redAccent)),
                      child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: FittedBox(
                            child: Icon(
                              Icons.local_fire_department,
                              color: Colors.redAccent,
                            ),
                          )),
                    ),
                  )
                : Container()
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
    await Navigator.of(context).push(
      PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 500),
        pageBuilder: (context, a, b) => FadeTransition(
          child: MusicDetails(this.entry),
          opacity: a,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = min(constraints.maxWidth, constraints.maxHeight);

        return InkWell(
          onTap: () => open(context),
          child: Column(
            children: <Widget>[
              Hero(
                tag: this.entry.id,
                child: Container(
                  width: width,
                  height: width,
                  child: MusicPreviewImageWidget(this.entry.getScaledUrl(150),
                      this.entry is Song, this.entry.artist.popularity >= 85),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      this.entry.title,
                      style: GoogleFonts.nunitoSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      this.entry.artist.name,
                      style: GoogleFonts.nunitoSans(
                          fontStyle: FontStyle.italic, color: Colors.white),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
