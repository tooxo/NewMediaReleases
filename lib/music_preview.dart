import 'dart:math';

import 'package:flutter/material.dart';

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
  final String url;
  final bool isSingle;
  final String title;
  final String artist;

  MusicPreviewWidget(this.url, this.isSingle, this.title, this.artist);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double width = min(constraints.maxWidth, constraints.maxHeight);

      return Column(
        children: <Widget>[
          Container(
            width: width,
            height: width,
            child: MusicPreviewImageWidget(this.url, this.isSingle),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: <Widget>[
                Text(
                  this.title,
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  this.artist,
                  style: TextStyle(
                      fontFamily: 'Lato', fontStyle: FontStyle.italic),
                )
              ],
            ),
          ),
        ],
      );
    });
  }
}
