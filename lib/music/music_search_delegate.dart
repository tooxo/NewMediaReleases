import 'package:new_media_releases/music/music_details.dart';
import 'package:new_media_releases/music/music_types.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicSearchDelegate extends SearchDelegate {
  final List<MusicalEntry> searchCandidates;

  MusicSearchDelegate(this.searchCandidates);

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      primaryColor: Colors.grey.shade900,
      textTheme: TextTheme(
        headline6: GoogleFonts.nunitoSans(color: Colors.white, fontSize: 20),
      ),
      primaryIconTheme: IconThemeData(
        color: Colors.white,
        opacity: 1,
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle:
            Theme.of(context).textTheme.headline6.copyWith(color: Colors.white),
      ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        color: Colors.white,
        onPressed: () => this.query = "",
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.white),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<MusicalEntry> filteredCandidates = this
        .searchCandidates
        .where((element) => element.searchTitle
            .contains(query.toLowerCase().replaceAll(" ", "")))
        .toList();
    return Container(
      color: Colors.black,
      child: ListView.builder(
        itemCount: filteredCandidates.length,
        itemBuilder: (BuildContext context, int index) =>
            SearchResultTile(filteredCandidates[index]),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return this.buildResults(context);
  }
}

class SearchResultTile extends StatelessWidget {
  final MusicalEntry entry;

  SearchResultTile(this.entry);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => MusicDetails(this.entry)))
      },
      leading: ClipOval(
        child: this.entry.getScaledUrl(30) != ""
            ? CachedNetworkImage(
                width: 40,
                height: 40,
                imageUrl: this.entry.getScaledUrl(30),
                fit: BoxFit.cover,
              )
            : Image.asset(
                "assets/image/image_not_found_small.jpg",
                width: 40,
                height: 40,
              ),
      ),
      title: Text(
        entry.title,
        style: GoogleFonts.nunitoSans(color: Colors.white),
      ),
      subtitle: Text(
        entry.allArtistsString,
        style: GoogleFonts.nunitoSans(color: Colors.white),
      ),
      trailing: Icon(
        entry is Song ? Icons.music_note : Icons.album,
        color: Colors.white,
      ),
    );
  }
}
