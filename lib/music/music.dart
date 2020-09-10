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
      RefreshController(initialRefresh: false);
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
          child: Column(children: <Widget>[
            MusicPreviewRack([
              Album(
                  title: "Hello",
                  artist: Artist(name: "kanye"),
                  artUrl:
                      "https://rap.de/wp-content/uploads/kanye-west-the-life-of-pablo1.jpg"),
              Song(
                  title: "Dior anderer banger",
                  artist: Artist(name: "RIN"),
                  artUrl:
                      "https://rap.de/wp-content/uploads/kanye-west-the-life-of-pablo1.jpg"),
              Song(
                  title: "Richtig guter Song",
                  artist: Artist(name: "Tyga feat G-Eazy"),
                  artUrl:
                      "https://media.discordapp.net/attachments/322859914290528257/749605892923850812/MakeMeSuffer-ij9zzz.jpg?width=360&height=205")
            ], DateTime.now()),
          ]),
        ));
  }
}
