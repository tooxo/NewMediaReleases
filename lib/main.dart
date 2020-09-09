import 'package:NewMediaReleases/music_preview.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:adobe_xd/blend_mask.dart';

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
      body: Column(
        children: <Widget>[
          Container(
            // height: 200,
            width: 200,
            child: MusicPreviewWidget(
                "https://rap.de/wp-content/uploads/kanye-west-the-life-of-pablo1.jpg",
                false,
                "The Long Life Of Pablo Picasso Long Title",
                "Kanye West"),
          )

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
        ],
      ),
    );
  }
}
