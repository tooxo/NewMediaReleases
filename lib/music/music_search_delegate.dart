import 'package:NewMediaReleases/music/music_details.dart';
import 'package:NewMediaReleases/music/music_types.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicSearchDelegate extends SearchDelegate {
  final List<MusicalEntry> searchCandidates;

  MusicSearchDelegate(this.searchCandidates);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
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
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            image:
                DecorationImage(image: NetworkImage(entry.getScaledUrl(50)))),
      ),
      title: Text(
        entry.title,
        style: GoogleFonts.nunitoSans(color: Colors.white),
      ),
      subtitle: Text(
        entry.allArtistsString,
        style: GoogleFonts.nunitoSans(color: Colors.white),
      ),
      trailing: Icon(entry is Song ?
      Icons.music_note : Icons.album, color: Colors.white,),
    );
  }
}
