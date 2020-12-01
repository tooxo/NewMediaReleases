import 'dart:math';

import 'package:new_media_releases/tv-series/serie_info.dart';
import 'package:new_media_releases/tv-series/serien_preview_rack.dart';
import 'package:new_media_releases/tv-series/serien_types..dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class SerienPreview extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SerienPreviewState();
}

class SerienPreviewState extends State<SerienPreview> {
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
    return Center(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          title: Text(
            "TV-Series",
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
              children: <Widget>[
                SerienPreviewRack(
                  [
                    Serie(
                      title: "Black Mirror",
                      releaseDate: DateTime.now(),
                      artUrl:
                          "https://upload.wikimedia.org/wikipedia/en/2/24/BlackMirrorTitleCard.jpg",
                    ),
                    Serie(
                      title: "Black Mirror",
                      releaseDate: DateTime.now(),
                      artUrl:
                          "https://upload.wikimedia.org/wikipedia/en/2/24/BlackMirrorTitleCard.jpg",
                    ),
                    Serie(
                      title: "Black Mirror",
                      releaseDate: DateTime.now(),
                      artUrl:
                          "https://upload.wikimedia.org/wikipedia/en/2/24/BlackMirrorTitleCard.jpg",
                    )
                  ],
                  DateTime.now(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SerienPreviewWidget extends StatelessWidget {
  final Serie entry;

  SerienPreviewWidget(this.entry);

  void open(BuildContext context) async {
    await Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SerieInfo(entry: entry)));
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
              child: Image(
                image: NetworkImage(
                  entry.artUrl,
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
