import 'dart:convert';
import 'dart:math';

import 'package:NewMediaReleases/common/network/movie_network.dart';
import 'package:NewMediaReleases/movies/movie_infos.dart';
import 'package:NewMediaReleases/movies/movie_preview_rack.dart';
import 'package:NewMediaReleases/movies/movie_types.dart';
import 'package:collection/collection.dart';
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

  void _onLoading() async {
    await Future.delayed(Duration(seconds: 1));
    _refreshController.loadComplete();
  }

  String entries = "[]";
  Map<DateTime, List<Movie>> parsedEntries = Map<DateTime, List<Movie>>();

  Map<DateTime, List<Movie>> parseEntries() {
    List<dynamic> l = JsonDecoder().convert(entries) as List<dynamic>;
    List<Movie> output = [];
    for (dynamic entry in l) {
      output.add(Movie.fromApiResponse(JsonEncoder().convert(entry)));
    }
    return groupBy(output, (Movie obj) => obj.releaseDate);
  }

  void _onRefresh() async {
    try {
      this.entries = await getLatestMovies();
      this.parsedEntries = parseEntries();
      setState(() {});
    } catch (e) {
      return _refreshController.refreshFailed();
    }
    _refreshController.refreshCompleted();
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
          backgroundColor: Colors.grey.shade900,
          color: Colors.white,
          distance: 40,
        ),
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (var x in this.parsedEntries.keys)
                MoviePreviewRack(
                  this.parsedEntries[x],
                  x,
                )
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
        transitionDuration: Duration(milliseconds: 500),
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
              tag: entry.artUrl,
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
                  Hero(
                    tag: entry.title,
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        this.entry.title,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunitoSans(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
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
