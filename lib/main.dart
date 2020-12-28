import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:new_media_releases/common/coming_soon.dart';
import 'package:new_media_releases/common/network/music_network.dart';

import 'games/game_preview.dart';
import 'movies/movie_preview.dart';
import 'music/music.dart';
import 'music/music_details.dart';
import 'music/music_types.dart';
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
    initDynamicLinks();
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    MainMusic(),
    ComingSoon(),
    ComingSoon(),
    ComingSoon(),
    // MoviePreview(),
    // SerienPreview(),
    // GamePreview(),
  ];

  Future<void> openDynamicLink(List<String> pathComponents) async {
    List<String> a = pathComponents;
    if (a.length != 3) return;
    if (a[0].toLowerCase() == "music") {
      if (a[1].toLowerCase() == "albums") {
        String apiResponse = await getSpecificAlbum(a[2]);
        Album album = Album.fromRawApiResponse(apiResponse);
        await Navigator.of(context).push(
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 500),
            pageBuilder: (context, a, b) => FadeTransition(
              child: MusicDetails(album),
              opacity: a,
            ),
          ),
        );
      } else if (a[1].toLowerCase() == "songs") {
        String apiResponse = await getSpecificSong(a[2]);
        Song song = Song.fromRawApiResponse(apiResponse);
        await Navigator.of(context).push(
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 500),
            pageBuilder: (context, a, b) => FadeTransition(
              child: MusicDetails(song),
              opacity: a,
            ),
          ),
        );
      }
    }
  }

  void initDynamicLinks() async {
    FirebaseDynamicLinks.instance.onLink(
        onSuccess: (PendingDynamicLinkData dynamicLink) async {
      final Uri deepLink = dynamicLink?.link;

      if (deepLink != null) {
        await openDynamicLink(deepLink.pathSegments);
      }
    }, onError: (OnLinkErrorException e) async {
      print('onLinkError');
      print(e.message);
    });

    final PendingDynamicLinkData data =
        await FirebaseDynamicLinks.instance.getInitialLink();
    final Uri deepLink = data?.link;

    if (deepLink != null) {
      await openDynamicLink(deepLink.pathSegments);
      // Navigator.pushNamed(context, deepLink.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
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
