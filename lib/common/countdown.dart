import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_countdown_clock/slide_countdown_clock.dart';

class Countdown extends StatefulWidget {
  final DateTime destinationTimeUTC;
  final int timezoneOffset;
  final Function onDone;

  Countdown(this.destinationTimeUTC, this.timezoneOffset, {this.onDone});

  @override
  State<StatefulWidget> createState() => CountdownState();
}

class CountdownState extends State<Countdown> {
  Duration tillDestination = Duration(seconds: 0);

  @override
  void initState() {
    super.initState();
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
                "ReleaseCountdown:",
                style: GoogleFonts.lato(fontSize: 25),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.timer,
                    size: 30,
                  ),
                ),
                SlideCountdownClock(
                  onDone: widget.onDone,
                  duration: this.tillDestination,
                  slideDirection: SlideDirection.Up,
                  separator: ":",
                  textStyle: GoogleFonts.lato(
                      fontSize: 30, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
