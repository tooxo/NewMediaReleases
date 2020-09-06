import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Filmdetails extends StatelessWidget {
  Filmdetails({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(72.0, 54.0),
            child:
                // Adobe XD layer: 'Filmcover' (shape)
                Container(
              width: 239.0,
              height: 239.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(49.0, 801.0),
            child:
                // Adobe XD layer: 'Filmbeschreibung' (text)
                SizedBox(
              width: 305.0,
              height: 397.0,
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Sitka Subheading',
                    fontSize: 18,
                    color: const Color(0xffffffff),
                  ),
                  children: [
                    TextSpan(
                      text: 'Beschreibung:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text:
                          'John David Washington ist der Protagonist in Christopher \nNolans neuem Sci-Fi-ActionSpektakel „Tenet“. Um die gesamte \nWelt vor dem Untergang zu bewahren, steht dem Protagonisten \nnur ein einziges Wort zur Verfügung: Tenet. Seine Mission führt \nihn in eine zwielichtige Welt der internationalen Spionage, in \nder die Gesetze der Zeit nicht zu gelten scheinen. Zeitreisen? \nNein. Inversion.\n\nFilmstarts: "Ein visuell rauschhaftes und konzeptionell \nbahnbrechendes Science-Fiction-Action-Meisterwerk – auf einem \nLevel mit „Inception“!"\n\nDeutschlandfunkkultur: "Das hat man so in der Filmgeschichte \nnoch nicht gesehen und das ist auch absolut faszinierend!"\n\nDer Spiegel: "Mit dem fulminanten Agententhriller gelingt \nRegisseur Nolan die Wiederbelebung des Kinos!"\n\nFilmbewertungsstelle: "Christopher Nolan ist mit TENET ein \nweiteres Meisterwerk gelungen, dessen erzählerischem und \nvisuellem Sog man sich nicht entziehen kann.\nMit seinen inszenatorischen Stärken und seiner \nüberwältigenden Wucht ist Christopher Nolans TENET das beste \nBeispiel für Kino als einzigartiges Erlebnis für alle Sinne."\n',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(23.0, 11.0),
            child:
                // Adobe XD layer: 'Topbar' (group)
                SizedBox(
              width: 340.0,
              height: 30.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(129.0, 0.0, 72.0, 30.0),
                    size: Size(339.9, 30.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'Filmtitel' (text)
                        Text(
                      'Tenet',
                      style: TextStyle(
                        fontFamily: 'Sitka Subheading',
                        fontSize: 30,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 7.0, 18.0, 15.4),
                    size: Size(339.9, 30.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Zurück' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 18.0, 15.4),
                          size: Size(18.0, 15.4),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 18.0, 15.4),
                                size: Size(18.0, 15.4),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_l0su8j,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(314.0, 2.0, 25.9, 25.9),
                    size: Size(339.9, 30.0),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'Details' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 25.9, 25.9),
                          size: Size(25.9, 25.9),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 25.9, 25.9),
                                size: Size(25.9, 25.9),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 25.9, 25.9),
                                      size: Size(25.9, 25.9),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_uh9zp9,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(6.5, 7.6, 13.0, 2.2),
                                      size: Size(25.9, 25.9),
                                      pinLeft: true,
                                      pinRight: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_8dl02a,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(6.5, 11.9, 13.0, 2.2),
                                      size: Size(25.9, 25.9),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_4h1f9,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(6.5, 16.2, 13.0, 2.2),
                                      size: Size(25.9, 25.9),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_kdh1ts,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(45.0, 1197.8),
            child:
                // Adobe XD layer: 'Youtube Logo' (group)
                SizedBox(
              width: 58.0,
              height: 44.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(20.7, 13.1, 17.6, 18.7),
                    size: Size(58.2, 44.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_wyz5h5,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 58.2, 44.1),
                    size: Size(58.2, 44.1),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_f7lnl8,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(45.0, 338.0),
            child:
                // Adobe XD layer: 'Wochen seit Release' (group)
                SizedBox(
              width: 94.0,
              height: 26.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 25.7, 25.7),
                    size: Size(94.0, 25.7),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'play-button' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 25.7, 25.7),
                          size: Size(25.7, 25.7),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 25.7, 25.7),
                                size: Size(25.7, 25.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 25.7, 25.7),
                                      size: Size(25.7, 25.7),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_18eul7,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(9.2, 8.3, 9.2, 9.2),
                          size: Size(25.7, 25.7),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 9.2, 9.2),
                                size: Size(9.2, 9.2),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 9.2, 9.2),
                                      size: Size(9.2, 9.2),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_sizml2,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(41.0, 4.0, 53.0, 18.0),
                    size: Size(94.0, 25.7),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '2.Woche',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 15,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(45.0, 372.3),
            child:
                // Adobe XD layer: 'Releaseort + Jahr' (group)
                SizedBox(
              width: 103.0,
              height: 26.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 25.7, 25.7),
                    size: Size(103.0, 25.7),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'planet-earth' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(18.5, 23.1, 1.0, 1.0),
                          size: Size(25.7, 25.7),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 1.0, 1.0),
                                size: Size(1.0, 1.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 1.0, 1.0),
                                      size: Size(1.0, 1.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_sl8jlv,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 25.7, 25.7),
                          size: Size(25.7, 25.7),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 25.7, 25.7),
                                size: Size(25.7, 25.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 25.7, 25.7),
                                      size: Size(25.7, 25.7),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_fy4p76,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(17.6, 16.0, 3.0, 5.2),
                          size: Size(25.7, 25.7),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 3.0, 5.2),
                                size: Size(3.0, 5.2),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 3.0, 5.2),
                                      size: Size(3.0, 5.2),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_vzaaqm,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(12.9, 5.9, 1.0, 1.0),
                          size: Size(25.7, 25.7),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 1.0, 1.0),
                                size: Size(1.0, 1.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 0.0, 1.0, 1.0),
                                      size: Size(1.0, 1.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_cz7v8o,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(40.0, 3.7, 63.0, 18.0),
                    size: Size(103.0, 25.7),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'USA, 2020',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 15,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(45.0, 407.0),
            child:
                // Adobe XD layer: 'Länge' (group)
                SizedBox(
              width: 90.0,
              height: 26.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 25.7, 25.7),
                    size: Size(90.0, 25.7),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'clock-circular-outl…' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 25.7, 25.7),
                          size: Size(25.7, 25.7),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 25.7, 25.7),
                                size: Size(25.7, 25.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_3d1dvf,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(11.8, 6.4, 6.2, 12.1),
                                size: Size(25.7, 25.7),
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: SvgPicture.string(
                                  _svg_i14qpp,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(40.0, 3.0, 50.0, 18.0),
                    size: Size(90.0, 25.7),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '150 min',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 15,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(45.0, 443.0),
            child:
                // Adobe XD layer: 'Altersfreigabe' (group)
                SizedBox(
              width: 81.0,
              height: 26.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 25.7, 25.7),
                    size: Size(81.0, 25.7),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'information' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 25.7, 25.7),
                          size: Size(25.7, 25.7),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_1qf4kp,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(11.3, 5.5, 3.1, 3.1),
                          size: Size(25.7, 25.7),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_pyeztc,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(11.7, 10.9, 2.3, 9.4),
                          size: Size(25.7, 25.7),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_yp17md,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(41.0, 4.0, 40.0, 18.0),
                    size: Size(81.0, 25.7),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'FSK 12',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 15,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(45.0, 478.0),
            child:
                // Adobe XD layer: 'Genre' (group)
                SizedBox(
              width: 137.0,
              height: 26.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 25.7, 25.7),
                    size: Size(137.0, 25.7),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'menu (1)' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 11.9, 11.9),
                          size: Size(25.7, 25.7),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 11.9, 11.9),
                                size: Size(11.9, 11.9),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 11.9, 11.9),
                                      size: Size(11.9, 11.9),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_mrk6hf,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(13.9, 0.0, 11.9, 11.9),
                          size: Size(25.7, 25.7),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 11.9, 11.9),
                                size: Size(11.9, 11.9),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 11.9, 11.9),
                                      size: Size(11.9, 11.9),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_jwptjd,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 13.9, 11.9, 11.9),
                          size: Size(25.7, 25.7),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 11.9, 11.9),
                                size: Size(11.9, 11.9),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 11.9, 11.9),
                                      size: Size(11.9, 11.9),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_w1fkec,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(13.9, 13.9, 11.9, 11.9),
                          size: Size(25.7, 25.7),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 11.9, 11.9),
                                size: Size(11.9, 11.9),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 11.9, 11.9),
                                      size: Size(11.9, 11.9),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_duukcp,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(41.0, 4.0, 96.0, 18.0),
                    size: Size(137.0, 25.7),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Action | Thriller',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 15,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(45.0, 513.0),
            child:
                // Adobe XD layer: 'Release' (group)
                SizedBox(
              width: 109.0,
              height: 25.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 24.8, 24.8),
                    size: Size(109.0, 24.8),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'calendar' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 24.8, 24.8),
                          size: Size(24.8, 24.8),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 24.8, 24.8),
                                size: Size(24.8, 24.8),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(18.0, 9.0, 2.0, 2.0),
                                      size: Size(24.8, 24.8),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  9999.0, 9999.0)),
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 24.8, 24.8),
                                      size: Size(24.8, 24.8),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_16sn6z,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(13.1, 13.1, 11.7, 11.7),
                                      size: Size(24.8, 24.8),
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_nh7g53,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(18.0, 16.0, 3.3, 3.9),
                                      size: Size(24.8, 24.8),
                                      pinRight: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_w5eo69,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(14.0, 9.0, 2.0, 2.0),
                                      size: Size(24.8, 24.8),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  9999.0, 9999.0)),
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(9.0, 14.0, 2.0, 2.0),
                                      size: Size(24.8, 24.8),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  9999.0, 9999.0)),
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(5.0, 9.0, 2.0, 2.0),
                                      size: Size(24.8, 24.8),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  9999.0, 9999.0)),
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(5.0, 14.0, 2.0, 2.0),
                                      size: Size(24.8, 24.8),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  9999.0, 9999.0)),
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(5.0, 18.0, 2.0, 2.0),
                                      size: Size(24.8, 24.8),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  9999.0, 9999.0)),
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(9.0, 18.0, 2.0, 2.0),
                                      size: Size(24.8, 24.8),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  9999.0, 9999.0)),
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(9.0, 9.0, 2.0, 2.0),
                                      size: Size(24.8, 24.8),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  9999.0, 9999.0)),
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(41.0, 3.0, 68.0, 18.0),
                    size: Size(109.0, 24.8),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '20.08.2020',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 15,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(45.0, 548.0),
            child:
                // Adobe XD layer: 'Rating' (group)
                SizedBox(
              width: 129.0,
              height: 26.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 25.7, 25.7),
                    size: Size(129.0, 25.7),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'star' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 25.7, 25.7),
                          size: Size(25.7, 25.7),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 25.7, 25.7),
                                size: Size(25.7, 25.7),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_nmzf7,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(41.0, 4.0, 88.0, 18.0),
                    size: Size(129.0, 25.7),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'IMDB: 7,9/10  ',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 15,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(85.5, 338.5),
            child: SvgPicture.string(
              _svg_gwx2wf,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(45.0, 594.5),
            child:
                // Adobe XD layer: 'Regie etc...' (group)
                SizedBox(
              width: 216.0,
              height: 124.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 1.5, 36.0, 17.0),
                    size: Size(216.0, 124.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Regie:',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 14,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 22.5, 60.0, 17.0),
                    size: Size(216.0, 124.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Drehbuch:',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 14,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 43.5, 69.0, 17.0),
                    size: Size(216.0, 124.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Produktion:',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 14,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 64.5, 39.0, 17.0),
                    size: Size(216.0, 124.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Musik:',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 14,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 85.5, 48.0, 17.0),
                    size: Size(216.0, 124.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Kamera:',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 14,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 106.5, 44.0, 17.0),
                    size: Size(216.0, 124.0),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Schnitt:',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 14,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(85.5, 0.0, 1.0, 124.0),
                    size: Size(216.0, 124.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_5tzhsy,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(109.0, 1.5, 106.0, 17.0),
                    size: Size(216.0, 124.0),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Regie Name' (text)
                        Text(
                      'Christopher Nolan',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 14,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(109.0, 22.5, 106.0, 17.0),
                    size: Size(216.0, 124.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Drehbuch Name' (text)
                        Text(
                      'Christopher Nolan',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 14,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(110.0, 43.5, 106.0, 17.0),
                    size: Size(216.0, 124.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Produktion Name' (text)
                        Text(
                      'Christopher Nolan',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 14,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(110.0, 64.5, 106.0, 17.0),
                    size: Size(216.0, 124.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Musik Name' (text)
                        Text(
                      'Christopher Nolan',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 14,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(110.0, 85.5, 106.0, 17.0),
                    size: Size(216.0, 124.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Kamera Name' (text)
                        Text(
                      'Christopher Nolan',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 14,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(110.0, 106.5, 106.0, 17.0),
                    size: Size(216.0, 124.0),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Schnitt Name' (text)
                        Text(
                      'Christopher Nolan',
                      style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 14,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(172.0, 293.0),
            child:
                // Adobe XD layer: 'Titel' (text)
                Text(
              'Tenet',
              style: TextStyle(
                fontFamily: 'Calibri',
                fontSize: 14,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_l0su8j =
    '<svg viewBox="0.0 0.0 18.0 15.4" ><path transform="translate(0.0, -31.84)" d="M 16.91786575317383 38.29666900634766 C 16.84421539306641 38.28471374511719 16.76967811584473 38.27920150756836 16.69510078430176 38.28016662597656 L 3.996446132659912 38.28016662597656 L 4.273343086242676 38.1513786315918 C 4.544001579284668 38.02327346801758 4.790230751037598 37.84892272949219 5.001002311706543 37.6362190246582 L 8.562023162841797 34.07519912719727 C 9.031017303466797 33.62749481201172 9.109820365905762 32.90727996826172 8.748767852783203 32.36874008178711 C 8.328553199768066 31.79486465454102 7.52269458770752 31.67026138305664 6.948777675628662 32.09047698974609 C 6.902413845062256 32.12444305419922 6.858344078063965 32.16147232055664 6.816929817199707 32.20131683349609 L 0.3774690926074982 38.64077758789063 C -0.1257745325565338 39.14345550537109 -0.1262172609567642 39.95889282226563 0.3764631152153015 40.46213531494141 C 0.3767850995063782 40.46245956420898 0.3771473169326782 40.46282196044922 0.3774692714214325 40.46314239501953 L 6.816929817199707 46.90260314941406 C 7.320575714111328 47.40484237670898 8.136013031005859 47.40371704101563 8.638291358947754 46.90007019042969 C 8.677813529968262 46.86042785644531 8.714719772338867 46.8182487487793 8.748767852783203 46.7738151550293 C 9.109820365905762 46.23527526855469 9.031017303466797 45.51506042480469 8.562023162841797 45.06735992431641 L 5.007441520690918 41.49989700317383 C 4.818483352661133 41.31073760986328 4.601232051849365 41.15212631225586 4.363495349884033 41.02981567382813 L 3.977127552032471 40.85595321655273 L 16.62422752380371 40.85595321655273 C 17.28213882446289 40.8803825378418 17.85935592651367 40.42080688476563 17.98295402526855 39.77412414550781 C 18.09681129455566 39.072021484375 17.61996841430664 38.41056442260742 16.91786575317383 38.29666900634766 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_uh9zp9 =
    '<svg viewBox="0.0 0.0 25.9 25.9" ><path transform="translate(1.0, 1.0)" d="M 11.95836639404297 -1 C 4.801804542541504 -1 -1 4.801804542541504 -1 11.95836639404297 C -1 19.11492919921875 4.801804542541504 24.91673278808594 11.95836639404297 24.91673278808594 C 19.11492919921875 24.91673278808594 24.91673278808594 19.11492919921875 24.91673278808594 11.95836639404297 C 24.91673278808594 4.801804065704346 19.11492729187012 -1 11.95836639404297 -1 Z M 11.95836639404297 22.75698852539063 C 5.994582176208496 22.75698852539063 1.15974497795105 17.92215156555176 1.15974497795105 11.95836639404297 C 1.15974497795105 5.994584083557129 5.994582176208496 1.159744739532471 11.95836639404297 1.159744739532471 C 17.92215156555176 1.159744739532471 22.75698852539063 5.994582176208496 22.75698852539063 11.95836639404297 C 22.75698852539063 17.92215156555176 17.92215156555176 22.75698852539063 11.95836639404297 22.75698852539063 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8dl02a =
    '<svg viewBox="6.5 7.6 13.0 2.2" ><path transform="translate(-120.52, -140.77)" d="M 138.8785095214844 148.3329925537109 L 128.079833984375 148.3329925537109 C 127.4834518432617 148.3329925537109 126.9999923706055 148.8164520263672 126.9999923706055 149.412841796875 C 126.9999923706055 150.0092315673828 127.4834518432617 150.4926910400391 128.079833984375 150.4926910400391 L 138.8784637451172 150.4926910400391 C 139.474853515625 150.4926910400391 139.9583129882813 150.0092315673828 139.9583129882813 149.412841796875 C 139.9583587646484 148.8164978027344 139.4748992919922 148.3329925537109 138.8785095214844 148.3329925537109 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4h1f9 =
    '<svg viewBox="6.5 11.9 13.0 2.2" ><path transform="translate(-120.52, -221.79)" d="M 138.8785095214844 233.6670074462891 L 128.0798492431641 233.6670074462891 C 127.4834594726563 233.6670074462891 127 234.1504669189453 127 234.7468566894531 C 127 235.3432464599609 127.4834594726563 235.8267059326172 128.0798492431641 235.8267059326172 L 138.8784637451172 235.8267059326172 C 139.474853515625 235.8267059326172 139.9583129882813 235.3432464599609 139.9583129882813 234.7468566894531 C 139.9583129882813 234.1504669189453 139.4749145507813 233.6670074462891 138.8785095214844 233.6670074462891 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kdh1ts =
    '<svg viewBox="6.5 16.2 13.0 2.2" ><path transform="translate(-120.52, -302.8)" d="M 138.8785095214844 319 L 128.0798492431641 319 C 127.4834594726563 319 127 319.4834594726563 127 320.079833984375 C 127 320.6762390136719 127.4834594726563 321.1596984863281 128.0798492431641 321.1596984863281 L 138.8784637451172 321.1596984863281 C 139.474853515625 321.1596984863281 139.9583129882813 320.6762390136719 139.9583129882813 320.079833984375 C 139.9583587646484 319.4834594726563 139.4749145507813 319 138.8785095214844 319 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wyz5h5 =
    '<svg viewBox="20.7 13.1 17.6 18.7" ><path transform="translate(-170.24, -93.41)" d="M 207.2989044189453 113.8513870239258 L 194.4413299560547 106.8162841796875 C 193.7020416259766 106.4117813110352 192.8282012939453 106.4268798828125 192.1035614013672 106.8562469482422 C 191.3784790039063 107.2860565185547 190.9459838867188 108.0453338623047 190.9459838867188 108.8880996704102 L 190.9459838867188 122.8375701904297 C 190.9459838867188 123.6763305664063 191.3757934570313 124.4342803955078 192.0960083007813 124.8645324707031 C 192.4720916748047 125.0892105102539 192.8890380859375 125.2019805908203 193.3068695068359 125.2019805908203 C 193.6896057128906 125.2019805908203 194.0732421875 125.1074142456055 194.4262390136719 124.917366027832 L 207.2842559814453 118.0034790039063 C 208.0475311279297 117.5927581787109 208.5239715576172 116.7992858886719 208.5275115966797 115.9321060180664 C 208.5306243896484 115.0649337768555 208.0599670410156 114.2679061889648 207.2989044189453 113.8514175415039 Z M 194.3565368652344 121.082763671875 L 194.3565368652344 110.6570739746094 L 203.9660949707031 115.9152069091797 L 194.3565368652344 121.082763671875 Z M 194.3565368652344 121.082763671875" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_f7lnl8 =
    '<svg viewBox="0.0 0.0 58.2 44.1" ><path  d="M 57.77022552490234 10.40383625030518 L 57.76756286621094 10.37719440460205 C 57.71827697753906 9.908749580383301 57.22762680053711 5.742038249969482 55.20199203491211 3.622706413269043 C 52.86064910888672 1.129956960678101 50.20628356933594 0.8271288275718689 48.92971420288086 0.681938111782074 C 48.82403564453125 0.669949471950531 48.72723388671875 0.6588488817214966 48.64065170288086 0.6473042368888855 L 48.53897094726563 0.636647641658783 C 40.84492874145508 0.07717858254909515 29.22529983520508 0.0008059877436608076 29.10890007019043 0.0003615306923165917 L 29.09868431091309 -8.249282836914063e-05 L 29.08847427368164 0.0003615306923165917 C 28.97213745117188 0.0008055540965870023 17.35250282287598 0.07717768847942352 9.589179039001465 0.636647641658783 L 9.48660945892334 0.6473042368888855 C 9.404022216796875 0.6584048867225647 9.312996864318848 0.6686173677444458 9.21397876739502 0.6801620125770569 C 7.952061176300049 0.8258016705513 5.326112747192383 1.129069805145264 2.978110074996948 3.711957216262817 C 1.048823118209839 5.808634281158447 0.4911352097988129 9.886102676391602 0.4338570535182953 10.34434032440186 L 0.4271967113018036 10.40384006500244 C 0.409879744052887 10.59876537322998 -0.0008425712585449219 15.23926162719727 -0.0008425712585449219 19.89794540405273 L -0.0008425712585449219 24.25292778015137 C -0.0008425712585449219 28.9116268157959 0.4098790287971497 33.5521125793457 0.4271967113018036 33.74747848510742 L 0.4303048849105835 33.77678298950195 C 0.4795913398265839 34.23767852783203 0.969792902469635 38.32802963256836 2.986107110977173 40.44823455810547 C 5.187576770782471 42.85750579833984 7.971163272857666 43.17631912231445 9.468400955200195 43.34770965576172 C 9.705065727233887 43.37479400634766 9.908872604370117 43.39788436889648 10.0478515625 43.42230606079102 L 10.1823902130127 43.44095611572266 C 14.62484359741211 43.86366271972656 28.55339813232422 44.0719108581543 29.1440258026123 44.08034896850586 L 29.16178703308105 44.08079147338867 L 29.17954444885254 44.08034896850586 C 29.2958812713623 44.07990646362305 40.91506576538086 44.00353240966797 48.60916137695313 43.44406509399414 L 48.71084213256836 43.43340682983398 C 48.80808258056641 43.42052841186523 48.91731262207031 43.40898513793945 49.03719711303711 43.39655303955078 C 50.29201126098633 43.26334762573242 52.90375518798828 42.98672103881836 55.21933746337891 40.43891906738281 C 57.14862823486328 38.34179306030273 57.70676040649414 34.26432418823242 57.76359558105469 33.80653381347656 L 57.77025604248047 33.74703216552734 C 57.78757095336914 33.55166244506836 58.19873046875 28.91161155700684 58.19873046875 24.25292587280273 L 58.19873046875 19.89794158935547 C 58.19829177856445 15.23924446105957 57.78757095336914 10.59919929504395 57.77025604248047 10.40383529663086 Z M 54.78771209716797 24.25293731689453 C 54.78771209716797 28.56485176086426 54.41118240356445 33.00552749633789 54.37565994262695 33.41313934326172 C 54.23091125488281 34.53607177734375 53.64257431030273 37.11584854125977 52.70257186889648 38.13755035400391 C 51.25327682495117 39.73203277587891 49.76446151733398 39.89011001586914 48.67749404907227 40.00511169433594 C 48.54606246948242 40.01887893676758 48.42440032958984 40.03219985961914 48.31428146362305 40.04595947265625 C 40.87244033813477 40.5841178894043 29.69149780273438 40.66670608520508 29.17645835876465 40.6698112487793 C 28.59877967834473 40.661376953125 14.8740406036377 40.45135498046875 10.56697082519531 40.05128860473633 C 10.34629154205322 40.01532363891602 10.10785102844238 39.98779678344727 9.856533050537109 39.95937728881836 C 8.581747055053711 39.81329345703125 6.836731433868408 39.61348342895508 5.494889736175537 38.13755416870117 L 5.463364124298096 38.10380554199219 C 4.539795398712158 37.14160919189453 3.968342065811157 34.72922515869141 3.823139667510986 33.42646408081055 C 3.796054601669312 33.11831283569336 3.409753799438477 28.62523651123047 3.409753799438477 24.2529411315918 L 3.409753799438477 19.89795875549316 C 3.409753799438477 15.59093475341797 3.785397529602051 11.15513134002686 3.821807384490967 10.73908805847168 C 3.994532346725464 9.416342735290527 4.593964099884033 6.992864608764648 5.494893550872803 6.01334810256958 C 6.988585948944092 4.370464324951172 8.563540458679199 4.188409805297852 9.605223655700684 4.068078994750977 C 9.704685211181641 4.056534290313721 9.797486305236816 4.045877933502197 9.883182525634766 4.034777164459229 C 17.4333610534668 3.493956804275513 28.69466018676758 3.413588523864746 29.0987548828125 3.41048002243042 C 29.50281715393066 3.413143873214722 40.76015853881836 3.493956089019775 48.24328231811523 4.034777164459229 C 48.33519744873047 4.046321868896484 48.435546875 4.057866096496582 48.5434455871582 4.070298671722412 C 49.61487579345703 4.192405700683594 51.23423004150391 4.377119064331055 52.72037887573242 5.962279319763184 L 52.7341423034668 5.976932525634766 C 53.65771102905273 6.939130306243896 54.22916793823242 9.393693923950195 54.37436294555664 10.72265625 C 54.40011978149414 11.01349067687988 54.78775787353516 15.51633739471436 54.78775787353516 19.89796257019043 L 54.78771209716797 24.25293731689453 Z M 54.78771209716797 24.25293731689453" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_18eul7 =
    '<svg viewBox="0.0 0.0 25.7 25.7" ><path  d="M 12.86039733886719 0 C 5.757798671722412 0 0 5.757798671722412 0 12.86039733886719 C 0 19.9629955291748 5.757798671722412 25.72079467773438 12.86039733886719 25.72079467773438 C 19.9629955291748 25.72079467773438 25.72079467773438 19.9629955291748 25.72079467773438 12.86039733886719 C 25.71326065063477 5.760974407196045 19.95987510681152 0.007589224260300398 12.86039733886719 0 Z M 12.86039733886719 23.88361167907715 C 6.772440433502197 23.88361167907715 1.837184071540833 18.94835472106934 1.837184071540833 12.86039733886719 C 1.837184071540833 6.772439479827881 6.772440433502197 1.837184071540833 12.86039733886719 1.837184071540833 C 18.94835472106934 1.837184071540833 23.88361167907715 6.772440433502197 23.88361167907715 12.86039733886719 C 23.87704277038574 18.94566345214844 18.94566345214844 23.87704277038574 12.86039733886719 23.88361167907715 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sizml2 =
    '<svg viewBox="0.0 0.0 9.2 9.2" ><path transform="translate(-170.67, -153.59)" d="M 179.7564544677734 157.7712860107422 C 179.6674346923828 157.5926971435547 179.5226898193359 157.4479064941406 179.3440551757813 157.35888671875 L 171.9952697753906 153.6844635009766 C 171.5414123535156 153.4577026367188 170.9897155761719 153.6417236328125 170.7629089355469 154.0955657958984 C 170.6991271972656 154.2231903076172 170.6659698486328 154.3639373779297 170.666015625 154.5066223144531 L 170.666015625 161.85546875 C 170.6658020019531 162.3628234863281 171.0768585205078 162.7742462158203 171.5842132568359 162.7745208740234 C 171.7268981933594 162.7745666503906 171.8676452636719 162.7414245605469 171.9952697753906 162.6776428222656 L 179.3440551757813 159.0032196044922 C 179.7981109619141 158.7769317626953 179.9827880859375 158.225341796875 179.7564544677734 157.7712860107422 Z M 172.5032501220703 160.3691711425781 L 172.5032501220703 155.992919921875 L 176.8794860839844 158.1810455322266 L 172.5032501220703 160.3691711425781 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sl8jlv =
    '<svg viewBox="0.0 0.0 1.0 1.0" ><path transform="translate(-368.63, -459.04)" d="M 369.5860290527344 459.2862243652344 C 369.4468994140625 459.04638671875 369.1395874023438 458.9647216796875 368.8994750976563 459.1038513183594 L 368.880126953125 459.1150207519531 C 368.6401672363281 459.2542114257813 368.5585632324219 459.5616455078125 368.69775390625 459.8016052246094 C 368.7908935546875 459.9621887207031 368.9594421386719 460.0519409179688 369.1326599121094 460.0519409179688 C 369.2182006835938 460.0519409179688 369.3049926757813 460.0299682617188 369.3843078613281 459.9839782714844 L 369.4036254882813 459.9727783203125 C 369.6435546875 459.8335876464844 369.7252197265625 459.5261840820313 369.5860290527344 459.2862243652344 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fy4p76 =
    '<svg viewBox="0.0 0.0 25.7 25.7" ><path transform="translate(0.0, 0.0)" d="M 23.9976692199707 6.435081958770752 C 22.28050994873047 3.460875749588013 19.5079517364502 1.333442449569702 16.19068717956543 0.44457146525383 C 12.87352180480957 -0.4442996382713318 9.408661842346191 0.01189109403640032 6.434455394744873 1.728998899459839 C 3.460298299789429 3.446106433868408 1.332814812660217 6.218716621398926 0.4439941346645355 9.535933494567871 C -0.4448267817497253 12.85314846038818 0.0113137224689126 16.31805992126465 1.728421330451965 19.29221534729004 C 3.268699169158936 21.96008682250977 5.716787338256836 23.98765182495117 8.621718406677246 25.00130844116211 C 9.998730659484863 25.48176002502441 11.43622589111328 25.72153663635254 12.87151145935059 25.72153663635254 C 14.43208503723145 25.72153663635254 15.98984527587891 25.43790626525879 17.46230316162109 24.87199974060059 C 17.72126960754395 24.77248382568359 17.85047340393066 24.48186874389648 17.75090789794922 24.22290420532227 C 17.65134048461914 23.96393966674805 17.36067581176758 23.83458137512207 17.1018123626709 23.93430137634277 C 13.18242168426514 25.44071960449219 8.939410209655762 24.75625610351563 5.769383907318115 22.37679290771484 L 6.219446659088135 20.02752113342285 L 6.436314105987549 19.95708656311035 C 7.255809783935547 19.69083976745605 7.705921649932861 18.80749320983887 7.439773082733154 17.98794746398926 L 7.28062629699707 17.49819946289063 C 7.24380350112915 17.38486671447754 7.244004726409912 17.26505470275879 7.281128406524658 17.15182304382324 C 7.420734405517578 16.72622680664063 7.370849132537842 16.26059150695801 7.144235610961914 15.87417602539063 C 6.917622566223145 15.48781299591064 6.535579681396484 15.21689319610596 6.095966815948486 15.13093852996826 L 4.962145805358887 14.90939807891846 L 2.774479866027832 13.24609375 C 2.643414735794067 13.1464262008667 2.471859931945801 13.11734104156494 2.315224647521973 13.16817951202393 L 1.034414291381836 13.58423137664795 C 1.007236838340759 13.12613201141357 1.006834983825684 12.66818237304688 1.032656073570251 12.212646484375 C 1.083193182945251 12.25971603393555 1.116097688674927 12.29171752929688 1.136342763900757 12.31271553039551 C 1.161410331726074 12.35446166992188 1.192455887794495 12.39274120330811 1.228826642036438 12.42589664459229 C 1.333417296409607 12.52114295959473 1.428162097930908 12.56434631347656 1.627095460891724 12.56434631347656 C 1.809903264045715 12.56429576873779 2.080523252487183 12.52787590026855 2.52737021446228 12.46186542510986 C 2.951158761978149 12.39922332763672 3.372737169265747 12.32864189147949 3.376906633377075 12.32793807983398 C 3.545848846435547 12.29965496063232 3.688669443130493 12.18712615966797 3.755884647369385 12.02963829040527 C 3.823100090026855 11.87209701538086 3.805366992950439 11.69119930267334 3.708864212036133 11.549635887146 L 3.092923879623413 10.64619541168213 L 3.975163698196411 10.01533603668213 C 4.033939361572266 9.973287582397461 4.082969665527344 9.919084548950195 4.118887901306152 9.856389999389648 L 5.48645544052124 7.468936920166016 L 6.037692546844482 6.878265380859375 C 6.600986480712891 6.274532318115234 6.761740684509277 5.391237735748291 6.447163581848145 4.62785530090332 C 6.261592864990234 4.177592754364014 5.937471866607666 3.802733421325684 5.532068729400635 3.550097942352295 C 5.971129894256592 3.204928159713745 6.439276695251465 2.886232614517212 6.936810970306396 2.599035024642944 C 8.762277603149414 1.545089364051819 10.75442504882813 1.034342646598816 12.72562599182129 1.014800906181335 L 11.82861709594727 2.140031099319458 L 8.50225830078125 3.30614972114563 C 8.36717414855957 3.353471755981445 8.258665084838867 3.456254005432129 8.204109191894531 3.588574886322021 L 7.275149822235107 5.840541839599609 C 7.209190368652344 6.000542640686035 7.230139255523682 6.183099746704102 7.330660343170166 6.323960781097412 L 8.687426567077637 8.224479675292969 C 8.493114471435547 8.401761054992676 8.303977012634277 8.65997314453125 8.078066825866699 8.980576515197754 C 7.979002475738525 9.121186256408691 7.885463714599609 9.253959655761719 7.820810317993164 9.328408241271973 C 7.764596462249756 9.39321231842041 7.708332061767578 9.456510543823242 7.652570247650146 9.519205093383789 C 7.360751152038574 9.847495079040527 7.059035301208496 10.18703842163086 6.844679832458496 10.64056587219238 C 6.373368263244629 11.63819694519043 6.468564033508301 12.79773998260498 7.093095302581787 13.66671752929688 C 7.69697904586792 14.50691032409668 8.692550659179688 14.93401336669922 9.755136489868164 14.80902862548828 C 9.928249359130859 14.78873252868652 10.08965682983398 14.74879550933838 10.24584007263184 14.71011352539063 C 10.67651081085205 14.60356426239014 10.81295108795166 14.59291458129883 10.95110034942627 14.72222232818604 C 11.0183162689209 14.78516674041748 11.02449417114258 14.79707145690918 11.02313804626465 15.01052474975586 C 11.02218341827393 15.1463623046875 11.02112865447998 15.315354347229 11.06794738769531 15.50831031799316 C 11.1429500579834 15.81700801849365 11.33681011199951 16.03036117553711 11.49254035949707 16.2017650604248 C 11.56995391845703 16.28691482543945 11.65002918243408 16.37502861022949 11.67469501495361 16.43415451049805 C 11.83138179779053 16.80961799621582 11.76316070556641 17.01754379272461 11.6136589050293 17.47318267822266 C 11.60084915161133 17.51216697692871 11.58778762817383 17.55195426940918 11.57467746734619 17.59274291992188 C 11.34756183624268 18.2957935333252 11.66414642333984 18.99316787719727 11.94345760345459 19.60835075378418 C 12.03418350219727 19.80813789367676 12.11983489990234 19.99672508239746 12.17594909667969 20.16340827941895 C 12.62761783599854 21.50364685058594 12.96620655059814 21.81058502197266 13.23793315887451 21.93416595458984 C 13.38025093078613 21.99886894226074 13.52754211425781 22.02725410461426 13.67634010314941 22.02720260620117 C 14.40048789978027 22.02715301513672 15.1561336517334 21.35479545593262 15.50326251983643 20.92854881286621 C 15.72128582000732 20.66089057922363 15.77498817443848 20.39288520812988 15.81417083740234 20.19711494445801 C 15.83371353149414 20.09975624084473 15.84908580780029 20.02289772033691 15.87842273712158 19.9726619720459 C 15.9233341217041 19.89580154418945 15.97623157501221 19.83622169494629 16.0431957244873 19.76076698303223 C 16.17787742614746 19.60910797119141 16.34551429748535 19.4204216003418 16.45407295227051 19.07836532592773 C 16.53655815124512 18.81854629516602 16.59649085998535 18.75484657287598 16.79497337341309 18.54345512390137 C 16.82953453063965 18.50673484802246 16.86635780334473 18.46744728088379 16.90589332580566 18.42444610595703 C 17.57498168945313 17.69638061523438 17.40267372131348 17.14021873474121 17.22016906738281 16.55135726928711 C 17.06659889221191 16.05588150024414 17.33520889282227 15.73899269104004 17.98465538024902 15.13420486450195 C 18.26617431640625 14.87202453613281 18.55724143981934 14.60095310211182 18.78224754333496 14.27522373199463 C 18.88071060180664 14.13265419006348 19.18026542663574 13.69896984100342 18.99489593505859 13.26910209655762 C 18.81319236755371 12.84762477874756 18.35137748718262 12.7767915725708 17.98033714294434 12.71992492675781 C 17.83379745483398 12.69741916656494 17.61236000061035 12.66346073150635 17.54187965393066 12.61739349365234 C 17.23107147216797 12.4141902923584 17.04092788696289 11.99009990692139 16.85701751708984 11.57992553710938 C 16.82039451599121 11.49829292297363 16.78427505493164 11.41771507263184 16.74765396118164 11.33949851989746 C 16.68234825134277 11.19994258880615 16.61709022521973 11.03110122680664 16.54801750183105 10.85236167907715 C 16.36525917053223 10.3793420791626 16.15813636779785 9.843175888061523 15.80553150177002 9.46942138671875 C 15.48859596252441 9.133596420288086 14.89114189147949 8.971837997436523 14.36401748657227 8.829068183898926 C 14.18673610687256 8.781092643737793 14.01940155029297 8.735780715942383 13.90903186798096 8.695038795471191 C 13.81654834747314 8.660879135131836 13.71617794036865 8.654699325561523 13.62042808532715 8.677205085754395 C 13.3638744354248 8.737338066101074 13.20382308959961 8.80359935760498 13.08496570587158 8.898844718933105 C 13.05356788635254 8.924013137817383 12.96058082580566 9.006650924682617 12.90612602233887 9.139473915100098 C 12.7222146987915 9.051210403442383 12.46932601928711 8.882670402526855 12.31369686126709 8.778932571411133 C 12.31048202514648 8.776772499084473 12.30721569061279 8.774612426757813 12.3040018081665 8.772451400756836 C 12.35644817352295 8.562567710876465 12.30897426605225 8.394126892089844 12.25924205780029 8.288933753967285 C 11.97862529754639 7.695348262786865 11.04710292816162 7.741815567016602 10.86334037780762 7.757439136505127 C 10.75895023345947 7.766180038452148 10.62688159942627 7.770851612091064 10.48717498779297 7.77577543258667 C 10.26774597167969 7.783561706542969 10.02520751953125 7.79230260848999 9.785232543945313 7.819229602813721 L 9.797588348388672 7.784767627716064 C 9.979745864868164 7.277235984802246 10.4644193649292 6.936235427856445 11.00364971160889 6.936235427856445 L 11.28923892974854 6.936235427856445 C 11.56659030914307 6.936235427856445 11.79154586791992 6.71127986907959 11.79154586791992 6.433928489685059 C 11.79154586791992 6.156577587127686 11.56659030914307 5.931621551513672 11.28923892974854 5.931621551513672 L 11.00364971160889 5.931621551513672 C 10.20309162139893 5.931621551513672 9.470002174377441 6.352949142456055 9.059123992919922 7.016111373901367 L 8.309857368469238 5.966536045074463 L 9.047017097473145 4.17970085144043 L 12.29741859436035 3.040151357650757 C 12.38653564453125 3.008904933929443 12.46510410308838 2.953143358230591 12.52403163909912 2.879246473312378 L 13.96896171569824 1.066791415214539 C 17.66098403930664 1.417989611625671 21.13628959655762 3.488003253936768 23.12773895263672 6.937288761138916 C 23.65817642211914 7.85605001449585 24.05056762695313 8.823288917541504 24.31144523620605 9.812581062316895 L 24.09849166870117 10.00247097015381 C 23.82053756713867 10.25048446655273 23.65767478942871 10.60620594024658 23.65144348144531 10.97850131988525 C 23.65139579772949 10.98257064819336 23.65129470825195 10.98659038543701 23.65114402770996 10.99060916900635 L 23.30421447753906 10.03653144836426 C 23.25252151489258 9.894164085388184 23.17636299133301 9.763601303100586 23.07800483703613 9.648510932922363 L 22.45915031433105 8.92396068572998 C 22.21922492980957 8.643092155456543 21.8698844909668 8.482087135314941 21.50060272216797 8.482087135314941 L 20.74309730529785 8.482087135314941 C 20.47418403625488 8.482087135314941 20.22843170166016 8.629378318786621 20.10158729553223 8.866339683532715 C 19.97474098205566 9.103351593017578 19.98860740661621 9.389595985412598 20.13775825500488 9.61324405670166 L 20.21441841125488 9.728335380554199 C 19.72492027282715 10.14925861358643 19.15876197814941 10.4860897064209 18.55593681335449 10.71325778961182 L 17.51756477355957 8.724273681640625 L 17.51756477355957 8.280542373657227 C 17.51756477355957 8.143299102783203 17.46139907836914 8.011932373046875 17.36208534240723 7.917238712310791 L 16.42704582214355 7.024600028991699 C 16.37545394897461 6.975368976593018 16.31396484375 6.937692165374756 16.24670028686523 6.9140305519104 L 15.40500068664551 6.618242263793945 C 15.14312076568604 6.526110172271729 14.85647678375244 6.663906574249268 14.76454448699951 6.925584316253662 C 14.67256355285645 7.187362670898438 14.81015872955322 7.474058628082275 15.07188892364502 7.566039562225342 L 15.81155872344971 7.826009750366211 L 16.5129508972168 8.495500564575195 L 16.5129508972168 8.847552299499512 C 16.5129508972168 8.928482055664063 16.53254318237305 9.008257865905762 16.57001686096191 9.080044746398926 L 17.86996841430664 11.57007884979248 C 17.98686599731445 11.7941312789917 18.25221252441406 11.89651107788086 18.48902320861816 11.80889987945557 L 18.8675479888916 11.66934490203857 C 19.74692535400391 11.34502220153809 20.56199836730957 10.82332515716553 21.22470855712891 10.16071510314941 C 21.39400100708008 9.99137020111084 21.42032814025879 9.726177215576172 21.28745269775391 9.526890754699707 L 21.26072692871094 9.486751556396484 L 21.50060272216797 9.486751556396484 C 21.57560348510742 9.486751556396484 21.64658737182617 9.519455909729004 21.69531631469727 9.576522827148438 L 22.31416893005371 10.30107402801514 C 22.3341121673584 10.32443332672119 22.34953498840332 10.35085678100586 22.36008453369141 10.37984371185303 L 23.04304122924805 12.25780487060547 C 23.10171508789063 12.41916275024414 23.23875999450684 12.53932666778564 23.40624618530273 12.57650089263916 C 23.44241523742676 12.58448886871338 23.47883605957031 12.58840656280518 23.51505661010742 12.58840656280518 C 23.64682197570801 12.58840656280518 23.77507591247559 12.53651332855225 23.8702220916748 12.44126510620117 L 24.19529914855957 12.11619091033936 C 24.40116310119629 11.91027450561523 24.54287910461426 11.64975166320801 24.61059761047363 11.36094760894775 C 25.11335563659668 15.39010429382324 23.53349304199219 19.55806541442871 20.19412231445313 22.17906379699707 C 19.9758472442627 22.35031700134277 19.93777084350586 22.66604995727539 20.10912322998047 22.88432312011719 C 20.2803783416748 23.10259819030762 20.59605979919434 23.14067649841309 20.81438255310059 22.96932029724121 C 23.22529602050781 21.07709312438965 24.88157081604004 18.37064170837402 25.47811889648438 15.34850692749023 C 26.08024406433105 12.2972412109375 25.55452346801758 9.131635665893555 23.9976692199707 6.435081958770752 Z M 2.375608444213867 14.20489311218262 L 4.446978569030762 15.77983379364014 C 4.50821590423584 15.82640266418457 4.579249382019043 15.85825252532959 4.654703140258789 15.87297248840332 L 5.903162002563477 16.11691665649414 C 6.062509536743164 16.14806365966797 6.195433616638184 16.2423038482666 6.277568817138672 16.38236236572266 C 6.359704971313477 16.52236938476563 6.3769850730896 16.68437767028809 6.326448440551758 16.83865356445313 C 6.222460269927979 17.15579223632813 6.221957683563232 17.4912166595459 6.325091361999512 17.80855560302734 L 6.484238624572754 18.29825401306152 C 6.579334735870361 18.59092712402344 6.418480396270752 18.90645790100098 6.125856876373291 19.00155258178711 L 5.626664161682129 19.16376495361328 C 5.452497005462646 19.2203311920166 5.322989463806152 19.36721992492676 5.288578033447266 19.54696273803711 L 4.886792182922363 21.64425468444824 C 4.003497123718262 20.83581161499023 3.227957725524902 19.88032722473145 2.598453998565674 18.78996276855469 C 1.830450057983398 17.45986938476563 1.350598335266113 16.04116058349609 1.139106035232544 14.60662746429443 L 2.375608444213867 14.20489311218262 Z M 5.303196430206299 6.192845821380615 L 4.712273120880127 6.825966835021973 C 4.68589973449707 6.854249954223633 4.662841320037842 6.885496139526367 4.643600940704346 6.919053554534912 L 3.301704406738281 9.261847496032715 L 2.109057664871216 10.11464881896973 C 1.88691520690918 10.27349376678467 1.832359313964844 10.58058547973633 1.986181259155273 10.80624485015869 L 2.432224273681641 11.46051502227783 C 2.17511773109436 11.49879455566406 1.944385051727295 11.53034210205078 1.79096508026123 11.54707145690918 C 1.761476635932922 11.51878833770752 1.730631947517395 11.49010372161865 1.698732256889343 11.46046447753906 C 1.579321980476379 11.3495454788208 1.413393259048462 11.20139980316162 1.166032671928406 10.9849328994751 C 1.573997020721436 8.459935188293457 2.790706396102905 6.081171989440918 4.704286575317383 4.265401363372803 C 5.070705890655518 4.380792617797852 5.371417045593262 4.654125213623047 5.518306732177734 5.010648727416992 C 5.683580875396729 5.411629676818848 5.599084854125977 5.875707149505615 5.303196430206299 6.192845821380615 Z M 9.398916244506836 8.93787670135498 C 9.622967720031738 8.811785697937012 10.1430082321167 8.79334831237793 10.52268981933594 8.779884338378906 C 10.67485427856445 8.774510383605957 10.81862926483154 8.76938533782959 10.94703102111816 8.758635520935059 C 11.01479911804199 8.752958297729492 11.09005165100098 8.754014015197754 11.16103458404541 8.759540557861328 C 11.1293363571167 8.840922355651855 11.11903858184814 8.930240631103516 11.13280296325684 9.018857002258301 C 11.15696620941162 9.174737930297852 11.25306606292725 9.310123443603516 11.39211940765381 9.384523391723633 C 11.48636245727539 9.43496036529541 11.61752700805664 9.522419929504395 11.75637912750244 9.615004539489746 C 12.14897060394287 9.87673282623291 12.59400939941406 10.17337417602539 13.01207065582275 10.19999980926514 C 13.39225482940674 10.22466564178467 13.60379695892334 10.0079984664917 13.69442367553711 9.915716171264648 C 13.70165824890137 9.908381462097168 13.70848941802979 9.901046752929688 13.71572399139404 9.894365310668945 C 13.76676273345947 9.85276985168457 13.8145866394043 9.797008514404297 13.85015487670898 9.729743957519531 C 13.93048095703125 9.752700805664063 14.01487731933594 9.775559425354004 14.10138416290283 9.799018859863281 C 14.39882850646973 9.879546165466309 14.95247745513916 10.02945041656494 15.07480239868164 10.15905857086182 C 15.29207229614258 10.38938903808594 15.46141719818115 10.82779598236084 15.61086750030518 11.21456241607666 C 15.68637084960938 11.41002941131592 15.75770568847656 11.59449481964111 15.83773136138916 11.76554679870605 C 15.87209224700928 11.83894062042236 15.9059009552002 11.91454601287842 15.94026184082031 11.9911060333252 C 16.17205047607422 12.50813293457031 16.43478202819824 13.09418296813965 16.99214744567871 13.45849227905273 C 17.2448844909668 13.62371730804443 17.55468559265137 13.67119026184082 17.82806968688965 13.71313762664795 C 17.86112213134766 13.71821117401123 17.89900016784668 13.72403812408447 17.9374828338623 13.73036861419678 C 17.77521896362305 13.95672988891602 17.54418563842773 14.17183876037598 17.30009269714355 14.39915561676025 C 16.67822456359863 14.97827339172363 15.90429210662842 15.69905567169189 16.26071548461914 16.84890365600586 C 16.428955078125 17.39185333251953 16.43679237365723 17.45052719116211 16.16627311706543 17.74480628967285 C 16.12939834594727 17.78494644165039 16.09503746032715 17.8215160369873 16.06283760070801 17.85577774047852 C 15.83115100860596 18.10243606567383 15.64814186096191 18.29725074768066 15.49662971496582 18.77448844909668 C 15.45262336730957 18.91308784484863 15.39560699462891 18.9772891998291 15.29207038879395 19.09383583068848 C 15.20928192138672 19.18707275390625 15.1061487197876 19.30321884155273 15.01105308532715 19.46598243713379 C 14.89711761474609 19.66099739074707 14.85944080352783 19.84877777099609 14.82925033569336 19.99963760375977 C 14.79946041107178 20.14808082580566 14.7825813293457 20.22257995605469 14.72430801391602 20.29412078857422 C 14.59163570404053 20.45698356628418 14.3441743850708 20.69349098205566 14.09013271331787 20.85490036010742 C 13.85402297973633 21.00480461120605 13.71617794036865 21.02529907226563 13.66920757293701 21.02248573303223 C 13.61560726165771 20.96501541137695 13.4214448928833 20.7133846282959 13.12806701660156 19.84264945983887 C 13.05572891235352 19.62784004211426 12.95535850524902 19.40680503845215 12.85830211639404 19.19305229187012 C 12.64434814453125 18.72183990478516 12.4231595993042 18.23455429077148 12.53076553344727 17.90154266357422 C 12.54347515106201 17.86225700378418 12.55603408813477 17.82387924194336 12.56839084625244 17.78635215759277 C 12.74029731750488 17.26239204406738 12.90255928039551 16.76762008666992 12.60194873809814 16.04723930358887 C 12.51041984558105 15.82785987854004 12.36468505859375 15.66755676269531 12.23623275756836 15.52609443664551 C 12.15309143066406 15.43461418151855 12.05890083312988 15.33092784881592 12.04438209533691 15.27124786376953 C 12.02669906616211 15.19845676422119 12.02725219726563 15.11441135406494 12.02790546417236 15.0171070098877 C 12.02961254119873 14.75462436676025 12.03222560882568 14.35801410675049 11.63792514801025 13.98878002166748 C 11.08201599121094 13.46843910217285 10.4337739944458 13.62874221801758 10.0047607421875 13.73483848571777 C 9.872992515563965 13.7673921585083 9.748508453369141 13.79823684692383 9.638191223144531 13.81119728088379 C 8.932479858398438 13.89388465881348 8.302422523498535 13.62763595581055 7.909077167510986 13.08026790618896 C 7.497596740722656 12.50773048400879 7.437865734100342 11.73726558685303 7.753245830535889 11.0696325302124 C 7.905912399291992 10.74656581878662 8.136544227600098 10.48699855804443 8.403596878051758 10.18658828735352 C 8.461920738220215 10.12093067169189 8.520796775817871 10.05471992492676 8.579673767089844 9.98690128326416 C 8.677633285522461 9.873970985412598 8.785438537597656 9.721053123474121 8.89942455291748 9.55914306640625 C 9.035510063171387 9.365985870361328 9.288899421691895 9.006298065185547 9.398916244506836 8.93787670135498 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vzaaqm =
    '<svg viewBox="0.0 0.0 3.0 5.2" ><path transform="translate(-350.15, -318.71)" d="M 353.1576232910156 319.9958801269531 L 352.9159545898438 319.0848999023438 C 352.8631591796875 318.8859558105469 352.6943664550781 318.7393798828125 352.4900817871094 318.7149353027344 C 352.2854614257813 318.6910095214844 352.0870971679688 318.7933349609375 351.9888916015625 318.9742126464844 C 351.9338073730469 319.07568359375 351.8842468261719 319.1831665039063 351.8363342285156 319.287109375 C 351.7556762695313 319.4620056152344 351.6723022460938 319.6428833007813 351.5855407714844 319.74267578125 C 351.5368347167969 319.7987670898438 351.4116516113281 319.8591613769531 351.2906494140625 319.9175415039063 C 351.00146484375 320.0570983886719 350.6053466796875 320.2482299804688 350.4540100097656 320.7305908203125 C 350.360107421875 321.02978515625 350.3951416015625 321.2665100097656 350.4207458496094 321.4393310546875 C 350.4429321289063 321.5891723632813 350.4480590820313 321.64111328125 350.4079284667969 321.7353820800781 L 350.4028930664063 321.7471008300781 C 350.2429809570313 322.1222839355469 349.9454956054688 322.8207702636719 350.3626403808594 323.4146118164063 C 350.6603393554688 323.8384094238281 350.9732971191406 323.9473876953125 351.2164916992188 323.9473876953125 C 351.2639465332031 323.9475708007813 351.308837890625 323.9433898925781 351.3504028320313 323.9366149902344 C 351.86279296875 323.8528747558594 352.2480163574219 323.3198852539063 352.5627746582031 322.2590637207031 L 353.1536254882813 320.2676696777344 C 353.179931640625 320.1791076660156 353.1813354492188 320.0850524902344 353.1576232910156 319.9958801269531 Z M 351.5997314453125 321.9732971191406 C 351.4392395019531 322.5141296386719 351.2973022460938 322.7666015625 351.2153625488281 322.8785095214844 C 351.2059326171875 322.8664855957031 351.1956787109375 322.8528137207031 351.1847229003906 322.837158203125 C 351.0887145996094 322.7004699707031 351.2322082519531 322.3636779785156 351.3271484375 322.1407775878906 L 351.3321838378906 322.1290283203125 C 351.4853515625 321.7696228027344 351.4443664550781 321.4936218261719 351.4145812988281 321.2920532226563 C 351.3954772949219 321.1630249023438 351.3886108398438 321.1075744628906 351.41259765625 321.0313720703125 C 351.4323120117188 320.9687194824219 351.5499877929688 320.9079284667969 351.7273254394531 320.8223571777344 C 351.805908203125 320.7843627929688 351.8924865722656 320.7426452636719 351.9798583984375 320.6920776367188 L 351.5997314453125 321.9732971191406 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cz7v8o =
    '<svg viewBox="0.0 0.0 1.0 1.0" ><path transform="translate(-256.04, -118.06)" d="M 256.7462768554688 118.0994338989258 L 256.7123718261719 118.0875778198242 C 256.4507751464844 117.9959487915039 256.1639404296875 118.1335525512695 256.0721130371094 118.3953170776367 C 255.9802551269531 118.6571426391602 256.1180725097656 118.9437484741211 256.3798522949219 119.0355758666992 L 256.4136962890625 119.0474319458008 C 256.46875 119.0667190551758 256.5247802734375 119.0758590698242 256.5799865722656 119.0758590698242 C 256.787353515625 119.0758590698242 256.9814758300781 118.946403503418 257.0540161132813 118.7396926879883 C 257.1458435058594 118.4778671264648 257.008056640625 118.1912155151367 256.7462768554688 118.0994338989258 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3d1dvf =
    '<svg viewBox="0.0 0.0 25.7 25.7" ><path  d="M 12.86035060882568 0 C 5.76903772354126 0 0 5.76903772354126 0 12.86035060882568 C 0 19.95171165466309 5.76903772354126 25.72070121765137 12.86035060882568 25.72070121765137 C 19.95171165466309 25.72070121765137 25.72070121765137 19.95166206359863 25.72070121765137 12.86035060882568 C 25.72070121765137 5.76903772354126 19.95171165466309 0 12.86035060882568 0 Z M 12.86035060882568 22.90969848632813 C 7.318994522094727 22.90969848632813 2.811005830764771 18.40170669555664 2.811005830764771 12.86035060882568 C 2.811005830764771 7.319270610809326 7.318995952606201 2.811005830764771 12.86035060882568 2.811005830764771 C 18.40170669555664 2.811005830764771 22.90969657897949 7.319270610809326 22.90969657897949 12.86035060882568 C 22.90969848632813 18.40170669555664 18.40170669555664 22.90969848632813 12.86035060882568 22.90969848632813 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i14qpp =
    '<svg viewBox="11.8 6.4 6.2 12.1" ><path transform="translate(-244.99, -132.86)" d="M 258.9678955078125 145.7346038818359 L 258.9678955078125 140.3445434570313 C 258.9678955078125 139.7427215576172 258.4801330566406 139.2550048828125 257.8785705566406 139.2550048828125 C 257.2767333984375 139.2550048828125 256.7890014648438 139.7427215576172 256.7890014648438 140.3445434570313 L 256.7890014648438 146.0826721191406 C 256.7890014648438 146.0998077392578 256.793212890625 146.1158752441406 256.7940063476563 146.1330108642578 C 256.7797241210938 146.4292602539063 256.8817749023438 146.7300720214844 257.1080322265625 146.9563903808594 L 261.1657409667969 151.0137634277344 C 261.5913696289063 151.4393768310547 262.2811889648438 151.4393768310547 262.7064514160156 151.0137634277344 C 263.1317749023438 150.5881805419922 263.1320190429688 149.8983764648438 262.7064514160156 149.4730377197266 L 258.9678955078125 145.7346038818359 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1qf4kp =
    '<svg viewBox="0.0 0.0 25.7 25.7" ><path  d="M 12.86035060882568 0 C 5.769154071807861 0 0 5.769231796264648 0 12.86043071746826 C 0 19.95162582397461 5.769154071807861 25.72070121765137 12.86035060882568 25.72070121765137 C 19.9515495300293 25.72070121765137 25.72070121765137 19.95162582397461 25.72070121765137 12.86043071746826 C 25.72070121765137 5.769231796264648 19.9515495300293 0 12.86035060882568 0 Z M 12.86035060882568 23.3824577331543 C 7.058384895324707 23.3824577331543 2.338245630264282 18.66231727600098 2.338245630264282 12.86043071746826 C 2.338245630264282 7.058539390563965 7.058384895324707 2.338245630264282 12.86035060882568 2.338245630264282 C 18.66231727600098 2.338245630264282 23.3824577331543 7.058539390563965 23.3824577331543 12.86043071746826 C 23.3824577331543 18.66231727600098 18.66224098205566 23.3824577331543 12.86035060882568 23.3824577331543 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pyeztc =
    '<svg viewBox="11.3 5.5 3.1 3.1" ><path transform="translate(-133.7, -64.54)" d="M 146.5604858398438 70.00000762939453 C 145.7011260986328 70.00000762939453 145.0019836425781 70.69960021972656 145.0019836425781 71.55953216552734 C 145.0019836425781 72.41868591308594 145.7011260986328 73.11766052246094 146.5604858398438 73.11766052246094 C 147.4199066162109 73.11766052246094 148.1190185546875 72.41868591308594 148.1190185546875 71.55953216552734 C 148.1190185546875 70.69960021972656 147.4199066162109 70.00000762939453 146.5604858398438 70.00000762939453 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yp17md =
    '<svg viewBox="11.7 10.9 2.3 9.4" ><path transform="translate(-138.31, -129.09)" d="M 151.1691284179688 140.0000152587891 C 150.5234527587891 140.0000152587891 150 140.5234527587891 150 141.1691436767578 L 150 148.1838684082031 C 150 148.8295288085938 150.5234527587891 149.3529968261719 151.1691284179688 149.3529968261719 C 151.8147888183594 149.3529968261719 152.3382568359375 148.8295288085938 152.3382568359375 148.1838684082031 L 152.3382568359375 141.1691436767578 C 152.3382568359375 140.5234527587891 151.8147888183594 140.0000152587891 151.1691284179688 140.0000152587891 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mrk6hf =
    '<svg viewBox="0.0 0.0 11.9 11.9" ><path  d="M 8.881277084350586 0 L 2.974357604980469 0 C 1.334311485290527 0 0 1.334311485290527 0 2.974357604980469 L 0 8.88127613067627 C 0 10.52132225036621 1.334311485290527 11.85563373565674 2.974357604980469 11.85563373565674 L 8.88127613067627 11.85563373565674 C 10.52132225036621 11.85563373565674 11.85563373565674 10.52132225036621 11.85563373565674 8.881277084350586 L 11.85563373565674 2.974357604980469 C 11.85563373565674 1.334311485290527 10.52132225036621 0 8.881277084350586 0 Z M 9.84620475769043 8.881277084350586 C 9.84620475769043 9.413323402404785 9.413322448730469 9.84620475769043 8.88127613067627 9.84620475769043 L 2.974357604980469 9.84620475769043 C 2.442310810089111 9.84620475769043 2.009429454803467 9.413322448730469 2.009429454803467 8.881277084350586 L 2.009429454803467 2.974357604980469 C 2.009429454803467 2.442310810089111 2.442310810089111 2.009429454803467 2.974357604980469 2.009429454803467 L 8.88127613067627 2.009429454803467 C 9.413322448730469 2.009429454803467 9.84620475769043 2.442310810089111 9.84620475769043 2.974357604980469 L 9.84620475769043 8.881277084350586 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jwptjd =
    '<svg viewBox="0.0 0.0 11.9 11.9" ><path transform="translate(-276.0, 0.0)" d="M 284.8414916992188 0 L 279.01416015625 0 C 277.3521728515625 0 276 1.352145195007324 276 3.0141441822052 L 276 8.841489791870117 C 276 10.50348854064941 277.3521728515625 11.85563373565674 279.01416015625 11.85563373565674 L 284.8414916992188 11.85563373565674 C 286.5034790039063 11.85563373565674 287.8556518554688 10.50348854064941 287.8556518554688 8.841489791870117 L 287.8556518554688 3.0141441822052 C 287.8556518554688 1.352145195007324 286.5034790039063 0 284.8414916992188 0 Z M 285.84619140625 8.841489791870117 C 285.84619140625 9.395489692687988 285.3955078125 9.84620475769043 284.8414916992188 9.84620475769043 L 279.01416015625 9.84620475769043 C 278.4601440429688 9.84620475769043 278.0094604492188 9.395489692687988 278.0094604492188 8.841489791870117 L 278.0094604492188 3.0141441822052 C 278.0094604492188 2.460144519805908 278.4601440429688 2.009429454803467 279.01416015625 2.009429454803467 L 284.8414916992188 2.009429454803467 C 285.3955078125 2.009429454803467 285.84619140625 2.460144519805908 285.84619140625 3.0141441822052 L 285.84619140625 8.841489791870117 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_w1fkec =
    '<svg viewBox="0.0 0.0 11.9 11.9" ><path transform="translate(0.0, -276.0)" d="M 8.881277084350586 276 L 2.974357604980469 276 C 1.334311485290527 276 0 277.3343200683594 0 278.974365234375 L 0 284.8812866210938 C 0 286.5213317871094 1.334311485290527 287.8556518554688 2.974357604980469 287.8556518554688 L 8.88127613067627 287.8556518554688 C 10.52132225036621 287.8556518554688 11.85563373565674 286.5213317871094 11.85563373565674 284.8812866210938 L 11.85563373565674 278.974365234375 C 11.85563373565674 277.3343200683594 10.52132225036621 276 8.881277084350586 276 Z M 9.84620475769043 284.8812866210938 C 9.84620475769043 285.413330078125 9.413322448730469 285.84619140625 8.88127613067627 285.84619140625 L 2.974357604980469 285.84619140625 C 2.442310810089111 285.84619140625 2.009429454803467 285.413330078125 2.009429454803467 284.8812866210938 L 2.009429454803467 278.974365234375 C 2.009429454803467 278.4423217773438 2.442310810089111 278.0094604492188 2.974357604980469 278.0094604492188 L 8.88127613067627 278.0094604492188 C 9.413322448730469 278.0094604492188 9.84620475769043 278.4423217773438 9.84620475769043 278.974365234375 L 9.84620475769043 284.8812866210938 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_duukcp =
    '<svg viewBox="0.0 0.0 11.9 11.9" ><path transform="translate(-276.0, -276.0)" d="M 284.8414916992188 276 L 279.01416015625 276 C 277.3521728515625 276 276 277.3521728515625 276 279.01416015625 L 276 284.8414916992188 C 276 286.5034790039063 277.3521728515625 287.8556518554688 279.01416015625 287.8556518554688 L 284.8414916992188 287.8556518554688 C 286.5034790039063 287.8556518554688 287.8556518554688 286.5034790039063 287.8556518554688 284.8414916992188 L 287.8556518554688 279.01416015625 C 287.8556518554688 277.3521728515625 286.5034790039063 276 284.8414916992188 276 Z M 285.84619140625 284.8414916992188 C 285.84619140625 285.3955078125 285.3955078125 285.84619140625 284.8414916992188 285.84619140625 L 279.01416015625 285.84619140625 C 278.4601440429688 285.84619140625 278.0094604492188 285.3955078125 278.0094604492188 284.8414916992188 L 278.0094604492188 279.01416015625 C 278.0094604492188 278.4601440429688 278.4601440429688 278.0094604492188 279.01416015625 278.0094604492188 L 284.8414916992188 278.0094604492188 C 285.3955078125 278.0094604492188 285.84619140625 278.4601440429688 285.84619140625 279.01416015625 L 285.84619140625 284.8414916992188 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_16sn6z =
    '<svg viewBox="0.0 0.0 24.8 24.8" ><path  d="M 20.95738220214844 1.940498352050781 L 19.69605827331543 1.940498352050781 L 19.69605827331543 0.9702491760253906 C 19.69605827331543 0.4343805611133575 19.26167869567871 0 18.72580909729004 0 C 18.18993759155273 0 17.75555992126465 0.4343805611133575 17.75555992126465 0.9702491760253906 L 17.75555992126465 1.940498352050781 L 13.3409252166748 1.940498352050781 L 13.3409252166748 0.9702491760253906 C 13.3409252166748 0.4343805611133575 12.90654468536377 0 12.37067794799805 0 C 11.83480739593506 0 11.40042781829834 0.4343805611133575 11.40042781829834 0.9702491760253906 L 11.40042781829834 1.940498352050781 L 7.034306049346924 1.940498352050781 L 7.034306049346924 0.9702491760253906 C 7.034306049346924 0.4343805611133575 6.599925518035889 0 6.064056873321533 0 C 5.528188705444336 0 5.093808174133301 0.4343805611133575 5.093808174133301 0.9702491760253906 L 5.093808174133301 1.940498352050781 L 3.880996704101563 1.940498352050781 C 1.741015076637268 1.940498352050781 0 3.681513547897339 0 5.821495056152344 L 0 20.95738220214844 C 0 23.09736251831055 1.741015076637268 24.83837699890137 3.880996704101563 24.83837699890137 L 11.30340385437012 24.83837699890137 C 11.83927249908447 24.83837699890137 12.27365112304688 24.40399551391602 12.27365112304688 23.86812591552734 C 12.27365112304688 23.33226013183594 11.83927249908447 22.89788055419922 11.30340385437012 22.89788055419922 L 3.880996704101563 22.89788055419922 C 2.811005830764771 22.89788055419922 1.940498352050781 22.02737236022949 1.940498352050781 20.95738220214844 L 1.940498352050781 5.821495056152344 C 1.940498352050781 4.751504421234131 2.811005830764771 3.880996704101563 3.880996704101563 3.880996704101563 L 5.093808174133301 3.880996704101563 L 5.093808174133301 4.851245880126953 C 5.093808174133301 5.38711404800415 5.528189182281494 5.821495056152344 6.064056873321533 5.821495056152344 C 6.59992504119873 5.821495056152344 7.034306049346924 5.38711404800415 7.034306049346924 4.851245880126953 L 7.034306049346924 3.880996704101563 L 11.40042781829834 3.880996704101563 L 11.40042781829834 4.851245880126953 C 11.40042781829834 5.38711404800415 11.83480739593506 5.821495056152344 12.37067794799805 5.821495056152344 C 12.90654563903809 5.821495056152344 13.3409252166748 5.38711404800415 13.3409252166748 4.851245880126953 L 13.3409252166748 3.880996704101563 L 17.75555992126465 3.880996704101563 L 17.75555992126465 4.851245880126953 C 17.75555992126465 5.38711404800415 18.18993759155273 5.821495056152344 18.72580909729004 5.821495056152344 C 19.26167869567871 5.821495056152344 19.69605827331543 5.38711404800415 19.69605827331543 4.851245880126953 L 19.69605827331543 3.880996704101563 L 20.95738220214844 3.880996704101563 C 22.02737236022949 3.880996704101563 22.89788055419922 4.751504421234131 22.89788055419922 5.821495056152344 L 22.89788055419922 11.35191535949707 C 22.89788055419922 11.88778400421143 23.33226013183594 12.32216262817383 23.86812591552734 12.32216262817383 C 24.40399551391602 12.32216262817383 24.83837699890137 11.88778400421143 24.83837699890137 11.35191535949707 L 24.83837699890137 5.821495056152344 C 24.83837699890137 3.681513547897339 23.09736251831055 1.940498352050781 20.95738220214844 1.940498352050781 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nh7g53 =
    '<svg viewBox="13.1 13.1 11.7 11.7" ><path transform="translate(-256.9, -256.9)" d="M 275.8699645996094 269.9999694824219 C 272.6332092285156 269.9999694824219 269.9999694824219 272.6332092285156 269.9999694824219 275.8699645996094 C 269.9999694824219 279.1067199707031 272.6332092285156 281.7399597167969 275.8699645996094 281.7399597167969 C 279.1067199707031 281.7399597167969 281.7399597167969 279.1067199707031 281.7399597167969 275.8699645996094 C 281.7399597167969 272.6332092285156 279.1067199707031 269.9999694824219 275.8699645996094 269.9999694824219 Z M 275.8699645996094 279.7994689941406 C 273.7032775878906 279.7994689941406 271.9404602050781 278.0367431640625 271.9404602050781 275.8699645996094 C 271.9404602050781 273.7032165527344 273.7032775878906 271.9404602050781 275.8699645996094 271.9404602050781 C 278.0366821289063 271.9404602050781 279.7994689941406 273.7032165527344 279.7994689941406 275.8699645996094 C 279.7994689941406 278.0367431640625 278.0366821289063 279.7994689941406 275.8699645996094 279.7994689941406 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_w5eo69 =
    '<svg viewBox="18.0 16.0 3.3 3.9" ><path transform="translate(-353.0, -313.99)" d="M 373.3771057128906 331.9890441894531 L 372.9404907226563 331.9890441894531 L 372.9404907226563 330.9702453613281 C 372.9404907226563 330.4343872070313 372.506103515625 330.0000305175781 371.97021484375 330.0000305175781 C 371.4343872070313 330.0000305175781 370.9999694824219 330.4343872070313 370.9999694824219 330.9702453613281 L 370.9999694824219 332.9592895507813 C 370.9999694824219 333.4951477050781 371.4343872070313 333.9295349121094 371.97021484375 333.9295349121094 L 373.3771057128906 333.9295349121094 C 373.9129943847656 333.9295349121094 374.3473205566406 333.4951477050781 374.3473205566406 332.9592895507813 C 374.3473205566406 332.4234313964844 373.9129943847656 331.9890441894531 373.3771057128906 331.9890441894531 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nmzf7 =
    '<svg viewBox="0.0 0.0 25.7 25.7" ><path transform="translate(-0.02, 0.0)" d="M 25.27224540710449 9.157352447509766 C 24.97824668884277 8.827402114868164 24.57649803161621 8.612800598144531 24.13878631591797 8.551870346069336 L 24.13878631591797 8.550954818725586 L 17.30240440368652 7.606585502624512 L 14.59708023071289 1.142247796058655 C 14.20205497741699 0.1960489004850388 13.11477947235107 -0.2507566511631012 12.16863536834717 0.1442687511444092 C 11.7175760269165 0.3326042294502258 11.35893726348877 0.6911898851394653 11.17065620422363 1.142247796058655 L 8.46533203125 7.606585502624512 L 1.628952980041504 8.550954818725586 C 0.6104124188423157 8.692731857299805 -0.1003534644842148 9.633440017700195 0.04142290726304054 10.65197944641113 C 0.1023533791303635 11.08969020843506 0.3169557750225067 11.4914436340332 0.6469061374664307 11.78543853759766 L 5.797632217407227 16.37853240966797 L 4.739314556121826 23.58598518371582 C 4.624666690826416 24.31784629821777 4.960806369781494 25.04702568054199 5.591803550720215 25.43516159057617 C 6.213918685913086 25.83298683166504 7.014142990112305 25.81812858581543 7.621026039123535 25.39748191833496 L 12.88381385803223 21.81851387023926 L 18.14660453796387 25.40114402770996 C 18.99580955505371 25.97750473022461 20.15150260925293 25.7563362121582 20.7279167175293 24.90712928771973 C 20.98983192443848 24.52120018005371 21.09710693359375 24.05092811584473 21.02837181091309 23.58964157104492 L 19.97010612487793 16.37939262390137 L 25.12083053588867 11.78629875183105 C 25.88859939575195 11.10217761993408 25.9564208984375 9.925121307373047 25.27224540710449 9.157352447509766 Z M 18.377197265625 15.34136581420898 C 18.14676666259766 15.54724979400635 18.0352954864502 15.85513210296631 18.0804557800293 16.16080665588379 L 19.18280410766602 23.87723350524902 L 13.40285491943359 19.94738006591797 C 13.09125900268555 19.73563194274902 12.68191623687744 19.73563194274902 12.37032127380371 19.94738006591797 L 6.556357860565186 23.85333824157715 L 7.687179565429688 16.15714836120605 C 7.731099605560303 15.85271167755127 7.619681835174561 15.5464973449707 7.390438556671143 15.34142303466797 L 1.878704905509949 10.3734884262085 L 9.235036849975586 9.358393669128418 C 9.557127952575684 9.313986778259277 9.831693649291992 9.102615356445313 9.957053184509277 8.802645683288574 L 12.89479637145996 1.837675809860229 C 12.89813423156738 1.841766357421875 12.90060997009277 1.846449017524719 12.9021692276001 1.851455092430115 L 15.80960750579834 8.798984527587891 C 15.93496894836426 9.098954200744629 16.2095890045166 9.310327529907227 16.53162574768066 9.354732513427734 L 23.89716529846191 10.41482830047607 L 18.377197265625 15.34136581420898 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5tzhsy =
    '<svg viewBox="130.5 594.5 1.0 124.0" ><path transform="translate(130.5, 594.5)" d="M 0 124 L 0 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gwx2wf =
    '<svg viewBox="85.5 338.5 1.0 1.0" ><path transform="translate(85.5, 338.5)" d="M 0 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
