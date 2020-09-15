import 'dart:convert';

import 'package:NewMediaReleases/common/network/music_network.dart';
import 'package:collection/collection.dart';
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

  String entries = "[]";

  Map<DateTime, List<MusicalEntry>> get parsedEntries {
    List<dynamic> l = JsonDecoder().convert(entries) as List<dynamic>;
    List<MusicalEntry> output = [];
    for (dynamic entry in l) {
      if (entry.keys.contains("tracks")) {
        // album
        output.add(Album.fromApiResponse(JsonEncoder().convert(entry)));
      } else {
        // track
        output.add(Song.fromApiResponse(JsonEncoder().convert(entry)));
      }
    }
    return groupBy(output, (MusicalEntry obj) => obj.dayOfRelease);
  }

  void _onRefresh() async {
    try {
      this.entries = await getAroundSongs();
      setState(() {});
    } catch (e) {
      return _refreshController.refreshFailed();
    }
    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
        enablePullDown: true,
        enablePullUp: false,
        // scrollController: _scrollController,
        header: WaterDropMaterialHeader(
          backgroundColor: Colors.black,
          color: Colors.white,
          distance: 40,
        ),
        controller: _refreshController,
        onRefresh: _onRefresh,
        child: ListView.builder(
            itemCount: parsedEntries.length,
            itemBuilder: (BuildContext buildContext, int index) {
              print("Currently Building $index");
              return MusicPreviewRack(
                  parsedEntries[parsedEntries.keys.toList()[index]],
                  parsedEntries.keys.toList()[index]);
            })

        /*SingleChildScrollView(
        child: Column(
          children: <Widget>[
            for (DateTime date in parsedEntries.keys)
              MusicPreviewRack(parsedEntries[date], date),
          ],
        ),
      ),*/
        );
  }
}
