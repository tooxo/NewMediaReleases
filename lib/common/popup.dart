import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopupTile {
  final String title;
  final IconData iconData;
  final String url;

  PopupTile({this.title, this.iconData, this.url});
}

class PopupWidget {
  final List<PopupTile> popupTiles;

  PopupWidget(this.popupTiles);

  void openUrl(String url) {
    // TODO: Implement
  }

  show(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: Wrap(
              children: <Widget>[
                for (PopupTile tile in this.popupTiles)
                  ListTile(
                    leading: Icon(tile.iconData),
                    title: Text(tile.title),
                    onTap: () => {this.openUrl(tile.url)},
                  )
              ],
            ),
          );
        });
  }
}
