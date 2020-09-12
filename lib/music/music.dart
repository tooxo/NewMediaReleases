import 'package:NewMediaReleases/music/music_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'music_preview_rack.dart';
import 'music_types.dart';

class MainMusic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainMusicState();
}

class MainMusicState extends State<MainMusic> {
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
    return SmartRefresher(
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
            MusicPreviewRack([
              Song(
                  title: "Baller los",
                  artist: Artist(name: "Mero", timeZone: 2),
                  genres: ["Rap", "HipHop"],
                  releaseDate: DateTime.utc(2020, 9, 13),
                  artUrl:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/2019_Mero_-_by_2eight_-_DSC5658.jpg/330px-2019_Mero_-_by_2eight_-_DSC5658.jpg"),
              Song(
                  title: "Baller los",
                  artist: Artist(name: "Mero", timeZone: 2),
                  genres: ["Rap", "HipHop"],
                  releaseDate: DateTime.utc(2020, 9, 13),
                  artUrl:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/2019_Mero_-_by_2eight_-_DSC5658.jpg/330px-2019_Mero_-_by_2eight_-_DSC5658.jpg"),
              Song(
                  title: "Baller los",
                  artist: Artist(name: "Mero", timeZone: 2),
                  genres: ["Rap", "HipHop"],
                  releaseDate: DateTime.utc(2020, 9, 13),
                  artUrl:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/2019_Mero_-_by_2eight_-_DSC5658.jpg/330px-2019_Mero_-_by_2eight_-_DSC5658.jpg")
            ], DateTime.now()),
          ],
        ),
      ),
    );
  }
}
