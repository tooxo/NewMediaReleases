import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class DetailScreen extends StatelessWidget {
  final String url;
  final String tag;

  DetailScreen(this.url, {this.tag = "detailScreen"});

  final PhotoViewController photoViewController = PhotoViewController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: this.tag,
            child: CachedNetworkImage(
              imageUrl: this.url,
              imageBuilder: (context, imageProvider) => PhotoView(
                imageProvider: imageProvider,
                controller: photoViewController,
                minScale: PhotoViewComputedScale.contained,
                maxScale: PhotoViewComputedScale.contained,
                onTapUp: (con, tud, e) => Navigator.of(con).pop(),
              ),
            ),
          ),
        ),
        /*onTap: () {
          Navigator.pop(context);
        },*/
      ),
    );
  }
}
