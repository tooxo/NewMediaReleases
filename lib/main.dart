import 'package:NewMediaReleases/music/music.dart';
import 'package:NewMediaReleases/music/music_preview.dart';
import 'package:NewMediaReleases/music/music_preview_rack.dart';
import 'package:NewMediaReleases/music/music_types.dart';
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
  // This widget is the root of your application.
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
        body: MainMusic()
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

        );
  }
}
