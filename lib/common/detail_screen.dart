import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String url;
  final String tag;

  DetailScreen(this.url, {this.tag = "detailScreen"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: this.tag,
            child: Image.network(
              this.url,
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
