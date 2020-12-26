import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../open_link.dart';

class PopupTile {
  final String title;
  final IconData iconData;
  final String url;

  PopupTile({this.title, this.iconData, this.url});
}

class UrlPopupWidget {
  final List<PopupTile> popupTiles;

  UrlPopupWidget(this.popupTiles);

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
                          leading: Icon(
                            tile.iconData,
                            color: Colors.white,
                          ),
                          title: Text(
                            tile.title,
                            style: TextStyle(color: Colors.white),
                          ),
                          tileColor: Colors.grey.shade900,
                          onTap: () => {OpenLink.openLink(tile.url)},
                        )
                      : Container()
              ],
            ),
          );
        });
  }
}
