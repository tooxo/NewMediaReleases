import 'dart:convert';

import 'package:new_media_releases/common/network/music_network.dart';
import 'package:new_media_releases/music/music_filter_menu.dart';
import 'package:new_media_releases/music/music_search_delegate.dart';
import 'package:collection/collection.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sticky_infinite_list/sticky_infinite_list.dart';

import 'music_load_button.dart';
import 'music_preview_rack.dart';
import 'music_types.dart';

class MainMusic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainMusicState();
}

class MainMusicState extends State<MainMusic> {
  final ScrollController _controller = ScrollController();

  String entries = "[]";
  Map<DateTime, List<MusicalEntry>> parsedEntries =
      Map<DateTime, List<MusicalEntry>>();

  Map<DateTime, List<MusicalEntry>> parseEntries() {
    List<dynamic> l = JsonDecoder().convert(entries) as List<dynamic>;
    List<MusicalEntry> output = [];
    for (dynamic entry in l) {
      if (entry.keys.contains("tracks")) {
        // album
        output.add(Album.fromApiResponse(entry));
      } else {
        // track
        output.add(Song.fromApiResponse(entry));
      }
    }
    Map<DateTime, List<MusicalEntry>> grouped =
        groupBy(output, (MusicalEntry obj) => obj.dayOfRelease);
    grouped.forEach((key, value) {
      value.sort((a, b) =>
          ((a.artist.popularity ?? 0) < (b.artist.popularity ?? 0)) ? 1 : -1);
    });
    return grouped;
  }

  Map<DateTime, List<MusicalEntry>> filterEntries() {
    if (this.genreFilter.isEmpty)
      return Map.fromEntries(
        this.parsedEntries.entries.toList()
          ..sort(
            (e1, e2) => e2.key.compareTo(e1.key),
          ),
      );

    Map<DateTime, List<MusicalEntry>> filtered = Map();
    // actually filter the tracks
    this.parsedEntries.forEach((key, value) {
      List<MusicalEntry> remainingValues = [];

      value.forEach((element) {
        for (String genre in element.genres) {
          if (this.genreFilter.contains(genre)) {
            return remainingValues.add(element);
          }
        }
      });

      if (remainingValues.isNotEmpty) {
        filtered[key] = remainingValues;
      }
    });
    return Map.fromEntries(
      filtered.entries.toList()
        ..sort(
          (e1, e2) => e2.key.compareTo(e1.key),
        ),
    );
  }

  int getNearestToToday(Map<DateTime, List<MusicalEntry>> e) {
    DateTime _date = DateTime.fromMillisecondsSinceEpoch(0);
    int ind = 0;
    e.keys.toList().asMap().forEach((index, date) {
      if (date.difference(DateTime.now()).abs() <
          _date.difference(DateTime.now()).abs()) {
        ind = index;
        _date = date;
      }
    });
    return ind;
  }

  List<String> genreFilter = [];

  musicButtonClick(bool isTop, BuildContext context) async {
    List entryCopy = JsonDecoder().convert(this.entries);
    List sortedKeys = this.parsedEntries.keys.toList()..sort();
    List newEntries;
    if (isTop) {
      newEntries = JsonDecoder().convert(await loadMoreEntriesTop(
          sortedKeys.last, this.parsedEntries[sortedKeys.last].last.id));
    } else {
      newEntries = JsonDecoder().convert(await loadMoreEntriesBottom(
          sortedKeys.first, this.parsedEntries[sortedKeys.first].first.id));
    }
    int added = 0;
    newEntries.forEach((a) {
      for (dynamic e in entryCopy) {
        if (e["id"] == a["id"]) return;
      }
      added++;
      entryCopy.add(a);
    });
    this.entries = JsonEncoder().convert(entryCopy.toList());
    this.parsedEntries = this.parseEntries();

    if (added == 0) {
      Scaffold.of(context).showSnackBar(
        SnackBar(
            content: Text("no entries were added."),
            behavior: SnackBarBehavior.floating),
      );
    } else {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    Map<DateTime, List<MusicalEntry>> filtered = filterEntries();
    int currentDayIndex = getNearestToToday(filtered);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text(
          "Music",
          style: GoogleFonts.nunitoSans(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () async {
            this.entries = await getAroundSongs();
            this.parsedEntries = parseEntries();
            setState(() {});
          },
        ),
        actions: [
          IconButton(
            onPressed: () async {
              List<String> f = await MusicFilterMenu(
                      this.genreFilter,
                      this
                          .parsedEntries
                          .values
                          .expand((element) => element)
                          .toList())
                  .showFilterDialog(context);
              if (f != null) this.genreFilter = f;
              setState(() {});
            },
            icon: Icon(
                genreFilter.isEmpty ? MdiIcons.filterOutline : MdiIcons.filter),
            tooltip: "Filter",
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
            tooltip: "Search",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "musicFAB",
        backgroundColor: Colors.grey.shade900,
        onPressed: () => {
          _controller.animateTo(0,
              duration: Duration(seconds: 1), curve: Curves.ease)
        },
        child: Icon(Icons.today),
        tooltip: "Jump to Today",
      ),
      body: InfiniteList(
        negChildCount: filtered.length > 0
            ? filtered.length - (filtered.length - currentDayIndex) + 1
            : 0,
        posChildCount:
            filtered.length > 0 ? filtered.length - currentDayIndex + 1 : 0,
        direction: filtered.length <= 1
            ? InfiniteListDirection.single
            : InfiniteListDirection.multi,
        controller: _controller,
        builder: (BuildContext context, int index) {
          index += currentDayIndex;
          if (index == -1 || index == filtered.length) {
            return InfiniteListItem(
              contentBuilder: (context) => FutureBuilder(
                future: musicButtonClick(index == -1, context),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Container();
                  }
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation(Colors.white),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            );
          }
          return MusicPreviewRack(filtered[filtered.keys.toList()[index]],
                  filtered.keys.toList()[index])
              .build(context);
        },
      ),
    );
  }
}
