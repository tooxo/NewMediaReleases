import 'dart:math';

import 'package:NewMediaReleases/games/game_info.dart';
import 'package:NewMediaReleases/games/game_preview_rack.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'game_types.dart';

class GamePreview extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GamePreviewState();
}

class GamePreviewState extends State<GamePreview> {
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
        appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
        "release.",
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
            GamePreviewRack(
              [
                Game(
                    title: "Bioshock",
                    releaseDate: DateTime.now(),
                    artUrl:
                        "https://upload.wikimedia.org/wikipedia/en/6/6d/BioShock_cover.jpg"),
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

class GamePreviewWidget extends StatelessWidget {
  final Game entry;

  GamePreviewWidget(this.entry);

  void open(BuildContext context) async {
    await Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => GameInfo(entry: entry)));
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
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'Lato',
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
