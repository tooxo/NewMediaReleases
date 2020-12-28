import 'package:new_media_releases/common/notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_media_releases/music/music_types.dart';
import 'package:slide_countdown_clock/slide_countdown_clock.dart';

class Countdown extends StatefulWidget {
  final DateTime destinationTimeUTC;
  final int timezoneOffset;
  final Function onDone;
  final MusicalEntry musicalEntry;

  Countdown(this.destinationTimeUTC, this.timezoneOffset, this.musicalEntry,
      {this.onDone});

  @override
  State<StatefulWidget> createState() => CountdownState();
}

class CountdownState extends State<Countdown> {
  Duration tillDestination = Duration(seconds: 0);
  Notifications n = Notifications();

  @override
  void initState() {
    super.initState();
    n.init();

    DateTime currentUtcTime = DateTime.now().toUtc();
    DateTime destinationTimeUtc = widget.destinationTimeUTC;
    if (widget.timezoneOffset < 0) {
      destinationTimeUtc =
          destinationTimeUtc.add(Duration(hours: widget.timezoneOffset));
    }
    if (widget.timezoneOffset > 0) {
      destinationTimeUtc = destinationTimeUtc
          .subtract(Duration(hours: widget.timezoneOffset.abs()));
    }
    tillDestination = Duration(
        seconds: destinationTimeUtc.difference(currentUtcTime).inSeconds);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                "Release Countdown",
                style:
                    GoogleFonts.nunitoSans(fontSize: 25, color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SlideCountdownClock(
                  onDone: widget.onDone,
                  duration: this.tillDestination,
                  slideDirection: SlideDirection.Up,
                  separator: ":",
                  textStyle: GoogleFonts.nunitoSans(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    if (!await n
                        .notificationAlreadyScheduled(widget.musicalEntry.id))
                      n.scheduleNotifications(
                          Duration(seconds: 10), this.widget.musicalEntry);
                    else
                      n.removeNotification(this.widget.musicalEntry.id);
                    setState(() {});
                  },
                  icon: FutureBuilder(
                    future:
                        n.notificationAlreadyScheduled(widget.musicalEntry.id),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.connectionState == ConnectionState.done &&
                          snapshot.hasData)
                        return Icon(
                          snapshot.data
                              ? Icons.notifications
                              : Icons.notifications_none,
                          color: Colors.white,
                          size: 32,
                        );
                      return Container();
                    },
                  ),
                  tooltip: "Notification",
                  // size: 30,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
