import 'package:NewMediaReleases/games/game_preview.dart';
import 'package:NewMediaReleases/movies/movie_preview.dart';
import 'package:NewMediaReleases/music/music.dart';
import 'package:NewMediaReleases/music/music_types.dart';
import 'package:NewMediaReleases/tv-series/serien_preview.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        backgroundColor: Colors.grey.shade900,
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

  int _currentIndex = 0;
  List<MusicalEntry> entries = List<MusicalEntry>();

  @override
  void initState() {
    super.initState();
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    MainMusic(),
    MoviePreview(),
    SerienPreview(),
    GamePreview(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: new AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "wet ass cock (as a millionaire)",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),*/
      resizeToAvoidBottomInset: false,
      body: _children[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.grey.shade900,
        backgroundColor: Colors.black,
        animationCurve: Curves.ease,
        animationDuration: Duration(milliseconds: 400),
        height: 50,
        items: <Widget>[
          Icon(Icons.headset, size: 30, color: Colors.white,),
          Icon(Icons.movie, size: 30, color: Colors.white,),
          Icon(Icons.tv, size: 30, color: Colors.white,),
          Icon(Icons.videogame_asset, size: 30, color: Colors.white,),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          //Handle button tap
        },
      ),
    );
  }
}
