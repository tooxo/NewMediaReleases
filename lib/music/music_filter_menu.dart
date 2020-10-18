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
          backgroundColor: Colors.grey.shade900,
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
              child: Text(
                "Cancel",
                style: GoogleFonts.nunitoSans(color: Colors.white),
              ),
            ),
            FlatButton(
              onPressed: () => Navigator.of(context).pop(this.appliedFilters),
              child: Text(
                "Okay",
                style: GoogleFonts.nunitoSans(color: Colors.white),
              ),
            )
          ],
          content: Container(
            height: 500,
            width: 500,
            child: Column(
              children: [
                Theme(
                  data: ThemeData(unselectedWidgetColor: Colors.white),
                  child: CheckboxListTile(
                    dense: true,
                    checkColor: Colors.black,
                    activeColor: Colors.white,
                    value: this.appliedFilters.isNotEmpty,
                    onChanged: (bool l) => setState(() {
                      if (this.appliedFilters.isNotEmpty) {
                        this.appliedFilters.clear();
                      } else {
                        this.appliedFilters.addAll(allMusicGenres);
                      }
                    }),
                    title: Text(
                      this.appliedFilters.isEmpty
                          ? "Select All"
                          : "Unselect All",
                      style: GoogleFonts.nunitoSans(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: allMusicGenres.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Theme(
                        data: ThemeData(unselectedWidgetColor: Colors.white),
                        child: CheckboxListTile(
                          dense: true,
                          checkColor: Colors.black,
                          activeColor: Colors.white,
                          title: Text(
                            allMusicGenres[index],
                            style: GoogleFonts.nunitoSans(
                                color: Colors.white, fontSize: 15),
                          ),
                          value: this
                              .appliedFilters
                              .contains(allMusicGenres[index]),
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
                                  this
                                      .appliedFilters
                                      .add(allMusicGenres[index]);
                                }
                              },
                            );
                          },
                        ),
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
