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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  get search => null;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "cock",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
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
          )
        ],
      ),
    );
  }
}
