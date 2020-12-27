import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ComingSoon extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: CupertinoColors.black,
            body: Center(
                child: Text("Coming Soon ...",
                    style: GoogleFonts.nunitoSans(color: Colors.white),),
            ),
        );
    }

}