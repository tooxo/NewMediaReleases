import 'dart:convert';

import 'package:NewMediaReleases/common/network/music_network.dart';
import 'package:NewMediaReleases/music/music_filter_menu.dart';
import 'package:NewMediaReleases/music/music_search_delegate.dart';
import 'package:collection/collection.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sticky_infinite_list/sticky_infinite_list.dart';

import 'music_preview_rack.dart';
import 'music_types.dart';

class MainMusic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainMusicState();
}

class MainMusicState extends State<MainMusic> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  final ScrollController _controller = ScrollController();
  int currentDayIndex = 0;

  String entries = "[]";
  Map<DateTime, List<MusicalEntry>> parsedEntries =
      Map<DateTime, List<MusicalEntry>>();

  Map<DateTime, List<MusicalEntry>> parseEntries() {
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
      this.parsedEntries = parseEntries();
      DateTime _date = DateTime.fromMillisecondsSinceEpoch(0);
      this.parsedEntries.keys.toList().asMap().forEach((index, date) {
        if (date.difference(DateTime.now()).abs() <
            _date.difference(DateTime.now()).abs()) {
          this.currentDayIndex = index;
          _date = date;
        }
      });
      setState(() {});
    } catch (e) {
      return _refreshController.refreshFailed();
    }
    _refreshController.refreshCompleted();
  }

  List<String> genreFilter = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              MusicFilterMenu(
                      this.genreFilter,
                      this
                          .parsedEntries
                          .values
                          .expand((element) => element)
                          .toList())
                  .showFilterDialog(context);
            },
            icon: Icon(
                genreFilter.isEmpty ? MdiIcons.filterOutline : MdiIcons.filter),
          ),
          IconButton(
            onPressed: () {
              showSearch(
                  context: context,
                  delegate: MusicSearchDelegate(this
                      .parsedEntries
                      .values
                      .expand((element) => element)
                      .toList()));
            },
            icon: Icon(MdiIcons.magnify),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          _controller.animateTo(0,
              duration: Duration(seconds: 1), curve: Curves.ease)
        },
        child: Icon(Icons.today),
        tooltip: "Jump to Today",
      ),
      body: SmartRefresher(
        enablePullDown: true,
        enablePullUp: false,
        scrollController: _controller,
        header: WaterDropMaterialHeader(
          backgroundColor: Colors.black,
          color: Colors.white,
          distance: 40,
        ),
        controller: _refreshController,
        onRefresh: _onRefresh,
        child: InfiniteList(
          negChildCount: this.parsedEntries.length -
              (this.parsedEntries.length - this.currentDayIndex),
          posChildCount: this.parsedEntries.length - this.currentDayIndex,
          direction: InfiniteListDirection.multi,
          controller: _controller,
          builder: (BuildContext context, int index) {
            index += this.currentDayIndex;
            return MusicPreviewRack(
                    parsedEntries[parsedEntries.keys.toList()[index]],
                    parsedEntries.keys.toList()[index])
                .build(context);
          },
        ),
      ),
    );
  }
}
