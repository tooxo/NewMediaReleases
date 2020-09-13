import 'package:NewMediaReleases/games/game_info.dart';
import 'package:NewMediaReleases/movies/movie_infos.dart';
import 'package:NewMediaReleases/movies/movie_preview.dart';
import 'package:NewMediaReleases/music/music.dart';
import 'package:NewMediaReleases/music/music_details.dart';
import 'package:NewMediaReleases/music/music_types.dart';
import 'package:NewMediaReleases/tv-series/serie_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Post {
  final String artist;
  final String albumname;

  Post(this.artist, this.albumname);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get search => null;

  List<MusicalEntry> entries = List<MusicalEntry>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "wet ass cock (as a millionaire)",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: MoviePreview(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        unselectedFontSize: 16,
        selectedFontSize: 16,

        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        currentIndex: 0,
        // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: Icon(
                //Font.headphones,

                Icons.headset),
            title: Text(
              'Music',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
                //Font.video,
                Icons.movie),
            title: Text(
              'Movies',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv
                //Font.TVSeries,
                ),
            title: Text(
              'TV-Series',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videogame_asset
                //Font.games,
                ),
            title: Text(
              'Games',
            ),
          ),
        ],
      ),
    );
    /*Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SearchBar<Post>(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                searchBarStyle: SearchBarStyle(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.all(5),
                  borderRadius: BorderRadius.circular(100),
                ),
                hintText: "Search in Music...",
                hintStyle: TextStyle(color: Colors.grey.shade200),
                textStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                onSearch: search,
                onItemFound: (Post post, int index) {
                  return ListTile(
                    title: Text(post.artist),
                    subtitle: Text(post.albumname),
                  );
                },
              ),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: ShapeDecoration(
                color: Colors.black,
                shape: CircleBorder(
            ),
            ),
          )*/
  }
}
