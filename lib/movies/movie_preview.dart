import 'dart:math';

import 'package:NewMediaReleases/movies/movie_infos.dart';
import 'package:NewMediaReleases/movies/movie_preview_rack.dart';
import 'package:NewMediaReleases/movies/movie_types.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MoviePreview extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MoviePreviewState();
}

class MoviePreviewState extends State<MoviePreview> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: true);
  ScrollController _scrollController = ScrollController();

  void _onRefresh() async {
    await Future.delayed(Duration(seconds: 1));
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    await Future.delayed(Duration(seconds: 1));
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text(
          "Movies",
          style: GoogleFonts.nunitoSans(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SmartRefresher(
        enablePullDown: true,
        enablePullUp: false,
        scrollController: _scrollController,
        header: WaterDropMaterialHeader(
          backgroundColor: Colors.black,
          color: Colors.white,
          distance: 40,
        ),
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              MoviePreviewRack(
                [
                  Movie(
                    title: "Tenet",
                    artUrl:
                        "https://upload.wikimedia.org/wikipedia/en/1/14/Tenet_movie_poster.jpg",
                    releaseDate: DateTime.now(),
                  ),
                ],
                DateTime.now(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MoviePreviewWidget extends StatelessWidget {
  final Movie entry;

  MoviePreviewWidget(this.entry);

  void open(BuildContext context) async {
    await Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, a, b) => FadeTransition(
          child: MovieInfos(entry: entry),
          opacity: a,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double width = min(constraints.maxWidth, constraints.maxHeight);

      return InkWell(
        onTap: () => open(context),
        child: Column(
          children: <Widget>[
            Hero(
              tag: "movies",
              child: Container(
                width: width,
                height: width,
                child: Image(
                  image: NetworkImage(
                    entry.artUrl,
                  ),
                ),
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
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
