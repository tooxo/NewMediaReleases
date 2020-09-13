import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'music_preview_rack.dart';
import 'music_types.dart';

class MainMusic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainMusicState();
}

class MainMusicState extends State<MainMusic> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: true);
  ScrollController _scrollController = ScrollController();

  void _onRefresh() async {
    await Future.delayed(Duration(seconds: 1));
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    await Future.delayed(Duration(seconds: 1));
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: false,
      scrollController: _scrollController,
      header: WaterDropMaterialHeader(
        backgroundColor: Colors.black,
        color: Colors.white,
        distance: 40,
      ),
      controller: _refreshController,
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MusicPreviewRack([
              Song.fromApiResponse('''
                  {
  "id": "song-test-id",
  "title": "Father Stretch My Hands Pt. 1",
  "genres": [
    "Hip-Hop",
    "Rap"
  ],
  "artist": {
    "name": "Kanye West",
    "spotifyUri": "spotify:artist:5K4W6rqBFWDnAN6FQUkS6x",
    "appleUri": "https://music.apple.com/de/artist/kanye-west/2715720",
    "language": "en-US",
    "artUrl": "https://upload.wikimedia.org/wikipedia/commons/1/11/Kanye_West_at_the_2009_Tribeca_Film_Festival.jpg",
    "timezone": -7
  },
  "featured_artists": [],
  "album": {
    "id": "album-test-id",
    "title": "The Life Of Pablo",
    "genres": [
      "Hip-Hop",
      "Rap"
    ],
    "artist": {
      "name": "Kanye West",
      "spotifyUri": "spotify:artist:5K4W6rqBFWDnAN6FQUkS6x",
      "appleUri": "https://music.apple.com/de/artist/kanye-west/2715720",
      "language": "en-US",
      "artUrl": "https://upload.wikimedia.org/wikipedia/commons/1/11/Kanye_West_at_the_2009_Tribeca_Film_Festival.jpg",
      "timezone": -7
    },
    "featured_artists": [],
    "tracks": null,
    "releaseDate": "2016-02-14T00:00:00+00:00",
    "spotifyUri": "spotify:album:7gsWAHLeT0w7es6FofOXk1",
    "appleUri": "https://music.apple.com/us/album/the-life-of-pablo/1443063578",
    "soundcloudUri": "https://soundcloud.com/kanyewest/sets/the-life-of-pablo",
    "language": "en-US",
    "artUrl": "https://preview.redd.it/php9xna18ql21.jpg?width=1800&format=pjpg&auto=webp&s=34e9aef3bb28b115cc3cf731ab5455bd37f580b6"
  },
  "releaseDate": "2016-02-14T00:00:00+00:00",
  "spotifyUri": "spotify:track:4KW1lqgSr8TKrvBII0Brf8",
  "appleUri": "https://music.apple.com/us/album/father-stretch-my-hands-pt-1/1443063578?i=1443063971",
  "soundcloudUri": "https://soundcloud.com/kanyewest/father-stretch-my-hands-pt-1?in=kanyewest/sets/the-life-of-pablo",
  "youtubeId": "wuO4_P_8p-Q",
  "language": "en-US",
  "trackNumber": 0,
  "previewUrl": null,
  "artUrl": "https://preview.redd.it/php9xna18ql21.jpg?width=1800&format=pjpg&auto=webp&s=34e9aef3bb28b115cc3cf731ab5455bd37f580b6"
}'''),
              Album.fromApiResponse('''
{"appleUri":"","artUrl":"https://images.genius.com/0553e46f16523eab4e16d0f79b72a095.1000x1000x1.png","artist":{"appleUri":"","artUrl":"https://i.scdn.co/image/ddd1eba0b544ae7d305bcddbc9eb79357434092a","id":"5f58cf948219ffcf606a78cb","language":"","name":"6ix9ine","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine","spotifyUri":"spotify:artist:7gZfnEnfiaHzxARJ2LeXrf","timezone":-5},"featured_artists":[],"genres":["Rap","R&B","Pop"],"id":"5f5e522aad977cc3e9c7965d","language":"","releaseDate":"2020-09-04T00:00:00","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine/sets/tattletales","spotifyUri":"spotify:album:6dQ5jKDz664ctPbDDSF7Ua","title":"TattleTales","tracks":[{"album":null,"appleUri":"","artUrl":"https://images.genius.com/0553e46f16523eab4e16d0f79b72a095.1000x1000x1.png","artist":{"appleUri":"","artUrl":"https://i.scdn.co/image/ddd1eba0b544ae7d305bcddbc9eb79357434092a","id":"5f58cf948219ffcf606a78cb","language":"","name":"6ix9ine","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine","spotifyUri":"spotify:artist:7gZfnEnfiaHzxARJ2LeXrf","timezone":-5},"featured_artists":[{"appleUri":"","artUrl":"https://i.scdn.co/image/20745ad5adc438c4aec164ca3cc2e04ed3abcb99","id":"5f5e522aad977cc3e9c79667","language":"","name":"Akon","soundcloudUri":"https://soundcloud.com/akon","spotifyUri":"spotify:artist:0z4gvV4rjIZ9wHck67ucSV","timezone":0}],"genres":["Rap","R&B"],"id":"5f5e522aad977cc3e9c79670","language":"","previewUrl":null,"releaseDate":"2020-09-04T00:00:00","soundcloudUri":"","spotifyUri":"spotify:track:7Mu3sCvXdMSlBLrUPOhWAG","title":"LOCKED UP, PT. 2","trackNumber":1,"youtubeId":""},{"album":null,"appleUri":"","artUrl":"https://images.genius.com/0553e46f16523eab4e16d0f79b72a095.1000x1000x1.png","artist":{"appleUri":"","artUrl":"https://i.scdn.co/image/ddd1eba0b544ae7d305bcddbc9eb79357434092a","id":"5f58cf948219ffcf606a78cb","language":"","name":"6ix9ine","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine","spotifyUri":"spotify:artist:7gZfnEnfiaHzxARJ2LeXrf","timezone":-5},"featured_artists":[],"genres":["Rap"],"id":"5f5e522aad977cc3e9c7967a","language":"","previewUrl":null,"releaseDate":"2020-09-04T00:00:00","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine/tutu","spotifyUri":"spotify:track:4We7QlOUIwpt5w8y07Gd0M","title":"TUTU","trackNumber":2,"youtubeId":""},{"album":null,"appleUri":"","artUrl":"https://images.genius.com/38d97091049a4a8ffb2c0922b3e8149d.1000x1000x1.png","artist":{"appleUri":"","artUrl":"https://i.scdn.co/image/ddd1eba0b544ae7d305bcddbc9eb79357434092a","id":"5f58cf948219ffcf606a78cb","language":"","name":"6ix9ine","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine","spotifyUri":"spotify:artist:7gZfnEnfiaHzxARJ2LeXrf","timezone":-5},"featured_artists":[],"genres":["Rap"],"id":"5f5e522aad977cc3e9c79684","language":"","previewUrl":null,"releaseDate":"2020-05-08T00:00:00","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine/gooba-6ix9ine","spotifyUri":"spotify:track:4NhDYoQTYCdWHTvlbGVgwo","title":"GOOBA","trackNumber":3,"youtubeId":""},{"album":null,"appleUri":"","artUrl":"https://images.genius.com/0553e46f16523eab4e16d0f79b72a095.1000x1000x1.png","artist":{"appleUri":"","artUrl":"https://i.scdn.co/image/ddd1eba0b544ae7d305bcddbc9eb79357434092a","id":"5f58cf948219ffcf606a78cb","language":"","name":"6ix9ine","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine","spotifyUri":"spotify:artist:7gZfnEnfiaHzxARJ2LeXrf","timezone":-5},"featured_artists":[],"genres":["Rap"],"id":"5f5e522aad977cc3e9c7968e","language":"","previewUrl":null,"releaseDate":"2020-09-04T00:00:00","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine/wait","spotifyUri":"spotify:track:2T7kQL535a3wTuUFnm6imJ","title":"WAIT","trackNumber":4,"youtubeId":""},{"album":null,"appleUri":"","artUrl":"https://images.genius.com/0553e46f16523eab4e16d0f79b72a095.1000x1000x1.png","artist":{"appleUri":"","artUrl":"https://i.scdn.co/image/ddd1eba0b544ae7d305bcddbc9eb79357434092a","id":"5f58cf948219ffcf606a78cb","language":"","name":"6ix9ine","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine","spotifyUri":"spotify:artist:7gZfnEnfiaHzxARJ2LeXrf","timezone":-5},"featured_artists":[{"appleUri":"","artUrl":"https://i.scdn.co/image/3bd74d144341aeeca5809519596ca825319d56ac","id":"5f5e522aad977cc3e9c7969b","language":"","name":"Smilez","soundcloudUri":"https://soundcloud.com/swolejoel420","spotifyUri":"spotify:artist:0lRdxaQbuLSVm4DpUPCinB","timezone":0}],"genres":["Rap"],"id":"5f5e522aad977cc3e9c796a6","language":"","previewUrl":null,"releaseDate":"2020-09-04T00:00:00","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine/charlie-feat-smilez","spotifyUri":"spotify:track:4GF8BkeMGGY6aP7b9cUFmu","title":"CHARLIE","trackNumber":5,"youtubeId":""},{"album":null,"appleUri":"","artUrl":"https://images.genius.com/61a72ca285338d94536db6a746870c43.1000x1000x1.png","artist":{"appleUri":"","artUrl":"https://i.scdn.co/image/ddd1eba0b544ae7d305bcddbc9eb79357434092a","id":"5f58cf948219ffcf606a78cb","language":"","name":"6ix9ine","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine","spotifyUri":"spotify:artist:7gZfnEnfiaHzxARJ2LeXrf","timezone":-5},"featured_artists":[],"genres":["Rap"],"id":"5f5e522aad977cc3e9c796af","language":"","previewUrl":null,"releaseDate":"2020-06-12T00:00:00","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine/trollz-6ix9ine-with-nicki-minaj","spotifyUri":"spotify:track:3dVvWnj4D8JGkKvo6Hucso","title":"TROLLZ","trackNumber":6,"youtubeId":""},{"album":null,"appleUri":"","artUrl":"https://images.genius.com/0553e46f16523eab4e16d0f79b72a095.1000x1000x1.png","artist":{"appleUri":"","artUrl":"https://i.scdn.co/image/ddd1eba0b544ae7d305bcddbc9eb79357434092a","id":"5f58cf948219ffcf606a78cb","language":"","name":"6ix9ine","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine","spotifyUri":"spotify:artist:7gZfnEnfiaHzxARJ2LeXrf","timezone":-5},"featured_artists":[{"appleUri":"","artUrl":"https://i.scdn.co/image/c6dfe7bf7733e7ee61bdc7663a69bb770cf75146","id":"5f5e522aad977cc3e9c796ba","language":"","name":"Leftside","soundcloudUri":"https://soundcloud.com/leftsideja","spotifyUri":"spotify:artist:187qoiisjzqvj3wsBWLotr","timezone":0}],"genres":["Rap"],"id":"5f5e522aad977cc3e9c796c3","language":"","previewUrl":null,"releaseDate":"2020-09-04T00:00:00","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine/gummo-prod-pierre-bourne","spotifyUri":"spotify:track:0jsOrmAm7jSkkiK6DwVtxy","title":"NINI","trackNumber":7,"youtubeId":""},{"album":null,"appleUri":"","artUrl":"https://images.genius.com/4d4f5e363a6b277be79c84932f99157e.1000x1000x1.png","artist":{"appleUri":"","artUrl":"https://i.scdn.co/image/ddd1eba0b544ae7d305bcddbc9eb79357434092a","id":"5f58cf948219ffcf606a78cb","language":"","name":"6ix9ine","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine","spotifyUri":"spotify:artist:7gZfnEnfiaHzxARJ2LeXrf","timezone":-5},"featured_artists":[],"genres":["Rap"],"id":"5f5e522aad977cc3e9c796ce","language":"","previewUrl":null,"releaseDate":"2020-08-02T00:00:00","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine/6ix9ine-punani","spotifyUri":"spotify:track:0Z8om3pNZzeSBF4bZEHaH2","title":"PUNANI","trackNumber":8,"youtubeId":""},{"album":null,"appleUri":"","artUrl":"https://images.genius.com/f9a80d350aac7b980d4153628080fcd6.1000x1000x1.png","artist":{"appleUri":"","artUrl":"https://i.scdn.co/image/ddd1eba0b544ae7d305bcddbc9eb79357434092a","id":"5f58cf948219ffcf606a78cb","language":"","name":"6ix9ine","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine","spotifyUri":"spotify:artist:7gZfnEnfiaHzxARJ2LeXrf","timezone":-5},"featured_artists":[],"genres":["Rap","Pop"],"id":"5f5e522aad977cc3e9c796d8","language":"","previewUrl":null,"releaseDate":"2020-07-03T00:00:00","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine/yaya-6ix9ine","spotifyUri":"spotify:track:69uaGquTkj6JZhElAT16fi","title":"YAYA","trackNumber":9,"youtubeId":""},{"album":null,"appleUri":"","artUrl":"https://images.genius.com/0553e46f16523eab4e16d0f79b72a095.1000x1000x1.png","artist":{"appleUri":"","artUrl":"https://i.scdn.co/image/ddd1eba0b544ae7d305bcddbc9eb79357434092a","id":"5f58cf948219ffcf606a78cb","language":"","name":"6ix9ine","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine","spotifyUri":"spotify:artist:7gZfnEnfiaHzxARJ2LeXrf","timezone":-5},"featured_artists":[{"appleUri":"","artUrl":"https://i.scdn.co/image/20745ad5adc438c4aec164ca3cc2e04ed3abcb99","id":"5f5e522aad977cc3e9c79667","language":"","name":"Akon","soundcloudUri":"https://soundcloud.com/akon","spotifyUri":"spotify:artist:0z4gvV4rjIZ9wHck67ucSV","timezone":0}],"genres":["Rap"],"id":"5f5e522aad977cc3e9c796e5","language":"","previewUrl":null,"releaseDate":"2020-09-04T00:00:00","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine/leah-6ix9ine-akon","spotifyUri":"spotify:track:53JAHaCwvGKl5Fo3qY90Od","title":"LEAH","trackNumber":10,"youtubeId":""},{"album":null,"appleUri":"","artUrl":"https://images.genius.com/0553e46f16523eab4e16d0f79b72a095.1000x1000x1.png","artist":{"appleUri":"","artUrl":"https://i.scdn.co/image/ddd1eba0b544ae7d305bcddbc9eb79357434092a","id":"5f58cf948219ffcf606a78cb","language":"","name":"6ix9ine","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine","spotifyUri":"spotify:artist:7gZfnEnfiaHzxARJ2LeXrf","timezone":-5},"featured_artists":[{"appleUri":"","artUrl":"https://i.scdn.co/image/b0a670bbfd2e3ddef2aa76951fd24a593153399b","id":"5f58d36a8219ffcf606f85a2","language":"","name":"Lil AK","soundcloudUri":"https://soundcloud.com/negrotiator","spotifyUri":"spotify:artist:0j9cHGhzQCSi0A7SmtUKlD","timezone":0}],"genres":["Rap"],"id":"5f5e522aad977cc3e9c796f1","language":"","previewUrl":null,"releaseDate":"2020-09-04T00:00:00","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine/gummo-prod-pierre-bourne","spotifyUri":"spotify:track:4FJokNdsqReVFNYwdLWgue","title":"GATA","trackNumber":11,"youtubeId":""},{"album":null,"appleUri":"","artUrl":"https://images.genius.com/0553e46f16523eab4e16d0f79b72a095.1000x1000x1.png","artist":{"appleUri":"","artUrl":"https://i.scdn.co/image/ddd1eba0b544ae7d305bcddbc9eb79357434092a","id":"5f58cf948219ffcf606a78cb","language":"","name":"6ix9ine","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine","spotifyUri":"spotify:artist:7gZfnEnfiaHzxARJ2LeXrf","timezone":-5},"featured_artists":[],"genres":["Rap"],"id":"5f5e522aad977cc3e9c796f9","language":"","previewUrl":null,"releaseDate":"2020-09-04T00:00:00","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine/gtl","spotifyUri":"spotify:track:0sPbaPKQ3sracxvdvdQ6LK","title":"GTL","trackNumber":12,"youtubeId":""},{"album":null,"appleUri":"","artUrl":"https://images.genius.com/0553e46f16523eab4e16d0f79b72a095.1000x1000x1.png","artist":{"appleUri":"","artUrl":"https://i.scdn.co/image/ddd1eba0b544ae7d305bcddbc9eb79357434092a","id":"5f58cf948219ffcf606a78cb","language":"","name":"6ix9ine","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine","spotifyUri":"spotify:artist:7gZfnEnfiaHzxARJ2LeXrf","timezone":-5},"featured_artists":[],"genres":["Rap"],"id":"5f5e522aad977cc3e9c79703","language":"","previewUrl":null,"releaseDate":"2020-09-04T00:00:00","soundcloudUri":"https://soundcloud.com/scumgang6ix9ine/ava","spotifyUri":"spotify:track:3HcdCFaubTEC1oeLDcdz32","title":"AVA","trackNumber":13,"youtubeId":""}]}
'''),
              Song(
                  title: "Baller los",
                  artist: Artist(name: "Mero", timeZone: 2),
                  genres: ["Rap", "HipHop"],
                  releaseDate: DateTime.utc(2020, 9, 13),
                  artUrl:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/2019_Mero_-_by_2eight_-_DSC5658.jpg/330px-2019_Mero_-_by_2eight_-_DSC5658.jpg"),
              Song(
                  title: "Baller los",
                  artist: Artist(name: "Mero", timeZone: 2),
                  genres: ["Rap", "HipHop"],
                  releaseDate: DateTime.utc(2020, 9, 13),
                  artUrl:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/2019_Mero_-_by_2eight_-_DSC5658.jpg/330px-2019_Mero_-_by_2eight_-_DSC5658.jpg"),
              Song(
                  title: "Baller los",
                  artist: Artist(name: "Mero", timeZone: 2),
                  genres: ["Rap", "HipHop"],
                  releaseDate: DateTime.utc(2020, 9, 13),
                  artUrl:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/2019_Mero_-_by_2eight_-_DSC5658.jpg/330px-2019_Mero_-_by_2eight_-_DSC5658.jpg")
            ], DateTime.now()),
          ],
        ),
      ),
    );
  }
}
