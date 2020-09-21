import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'music_types.dart';

class MusicFilterMenu {
  final List<String> appliedFilters;
  final List<MusicalEntry> musicalEntries;
  final List<String> allMusicGenres = [];
  final List<String> appliedFiltersBackup = [];

  MusicFilterMenu(this.appliedFilters, this.musicalEntries) {
    this.appliedFiltersBackup.addAll(this.appliedFilters);
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
    return await showDialog(
      context: context,
      builder: (BuildContext context) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
          backgroundColor: Colors.black54,
          title: Center(
            child: Text(
              "Select Genres",
              style: GoogleFonts.nunitoSans(color: Colors.white),
            ),
          ),
          actions: [
            FlatButton(
              onPressed: () =>
                  Navigator.of(context).pop(this.appliedFiltersBackup),
              child: Text("Cancel", style: GoogleFonts.nunitoSans(color: Colors.white),),
            ),
            FlatButton(
              onPressed: () => Navigator.of(context).pop(this.appliedFilters),
              child: Text("Okay", style: GoogleFonts.nunitoSans(color: Colors.white),),
            )
          ],
          content: Container(
            height: 500,
            width: 500,
            child: Column(
              children: [
                CheckboxListTile(
                  activeColor: Colors.white,
                  checkColor: Colors.white,
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
                      : "Unselect All", style: GoogleFonts.nunitoSans(color: Colors.white),),
                ),
                Divider(),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: allMusicGenres.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CheckboxListTile(
                        checkColor: Colors.white,
                        activeColor: Colors.white,
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
                                this
                                    .appliedFilters
                                    .remove(allMusicGenres[index]);
                              } else {
                                this.appliedFilters.add(allMusicGenres[index]);
                              }
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}