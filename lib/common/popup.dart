import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../open_link.dart';

class PopupTile {
  final String title;
  final IconData iconData;
  final String url;

  PopupTile({this.title, this.iconData, this.url});
}

class PopupWidget {
  final List<PopupTile> popupTiles;

  PopupWidget(this.popupTiles);

  show(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: Wrap(
              children: <Widget>[
                for (PopupTile tile in this.popupTiles)
                  tile.url != null && tile.url != ""
                      ? ListTile(
                          leading: Icon(tile.iconData),
                          title: Text(tile.title),
                          onTap: () => {OpenLink.openlink(tile.url)},
                        )
                      : Container()
              ],
            ),
          );
        });
  }
}
