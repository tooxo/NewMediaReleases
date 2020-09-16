import 'package:flutter/material.dart';

import 'music_types.dart';

class MusicFilterMenu {
  final List<String> appliedFilters;
  final List<MusicalEntry> musicalEntries;
  final List<String> allMusicGenres = [];

  MusicFilterMenu(this.appliedFilters, this.musicalEntries) {
    this.allMusicGenres.addAll(getAllGenres());
    if (appliedFilters.isEmpty) this.appliedFilters.addAll(this.allMusicGenres);
  }

  List<String> getAllGenres() {
    List<String> allGenres = [];
    this.musicalEntries.forEach((element) {
      element.genres.forEach((genre) {
        if (!allGenres.contains(genre)) {
          allGenres.add(genre);
        }
      });
    });
    allGenres.sort();
    return allGenres;
  }

  Future<List<String>> showFilterDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
          title: Center(child: Text("title")),
          content: Container(
            width: 500,
            child: Column(
              children: [
                CheckboxListTile(
                  value: this.appliedFilters.isNotEmpty,
                  dense: true,
                  onChanged: (bool l) => setState(() {
                    if (this.appliedFilters.isNotEmpty) {
                      this.appliedFilters.clear();
                    } else {
                      this.appliedFilters.addAll(allMusicGenres);
                    }
                  }),
                  title: Text(this.appliedFilters.isEmpty
                      ? "Select All"
                      : "Unselect All"),
                ),
                Divider(),
                ListView.builder(
                    scrollDirection: Axis.vertical,
                  itemCount: allMusicGenres.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return CheckboxListTile(
                      dense: true,
                      title: Text(allMusicGenres[index]),
                      value:
                          this.appliedFilters.contains(allMusicGenres[index]),
                      onChanged: (bool value) {
                        setState(
                          () {
                            if (this
                                .appliedFilters
                                .contains(allMusicGenres[index])) {
                              this.appliedFilters.remove(allMusicGenres[index]);
                            } else {
                              this.appliedFilters.add(allMusicGenres[index]);
                            }
                          },
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
    return this.appliedFilters;
  }
}
