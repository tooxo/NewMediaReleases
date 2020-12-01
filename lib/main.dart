import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'games/game_preview.dart';
import 'movies/movie_preview.dart';
import 'music/music.dart';
import 'tv-series/serien_preview.dart';

void main() {
  runApp(MyApp());
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
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<MainPage> {
  int _currentIndex = 0;

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
      resizeToAvoidBottomInset: false,
      body: IndexedStack(
        children: _children,
        index: _currentIndex,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.grey.shade900,
        backgroundColor: Colors.black,
        animationCurve: Curves.ease,
        animationDuration: Duration(milliseconds: 400),
        height: 50,
        items: <Widget>[
          Icon(
            Icons.headset,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.movie,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.tv,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.videogame_asset,
            size: 30,
            color: Colors.white,
          ),
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
