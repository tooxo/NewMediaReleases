import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_media_releases/music/music_types.dart';

class CountryPullUp {
  List<MusicCountry> selectedCountries;

  CountryPullUp(this.selectedCountries);

  show(BuildContext context) async {
    return await showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return StatefulBuilder(
            builder: (context, setState) => Container(
              child: Wrap(
                children: <Widget>[
                  for (MusicCountry m in MusicCountry.values)
                    ListTile(
                      title: Text(MusicCountryToString.string(m)),
                      trailing:
                          Checkbox(value: this.selectedCountries.contains(m)),
                      onTap: () {
                        if (selectedCountries.contains(m))
                          selectedCountries.remove(m);
                        else
                          selectedCountries.add(m);
                        setState(() {});
                      },
                    )
                ],
              ),
            ),
          );
        });
  }
}
