import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:adobe_xd/blend_mask.dart';

class StartbildschirmMusic extends StatelessWidget {
  StartbildschirmMusic({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(11.0, 44.0),
            child:
                // Adobe XD layer: 'Search' (group)
                SizedBox(
              width: 354.0,
              height: 47.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 354.0, 47.0),
                    size: Size(354.0, 47.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color(0xff000000),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(12.0, 12.0, 24.4, 25.0),
                    size: Size(354.0, 47.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Suche Logo' (shape)
                        SvgPicture.string(
                      _svg_k75xx2,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(64.0, 14.0, 155.0, 20.0),
                    size: Size(354.0, 47.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Search in Music...',
                      style: TextStyle(
                        fontFamily: 'Sitka Subheading',
                        fontSize: 20,
                        color: const Color(0xff888888),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(11.0, 106.0),
            child:
                // Adobe XD layer: 'Sort by' (group)
                SizedBox(
              width: 354.0,
              height: 30.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 354.0, 30.0),
                    size: Size(354.0, 30.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_d1jk1p,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(11.0, 5.0, 78.0, 20.0),
                    size: Size(354.0, 30.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Sort by...',
                      style: TextStyle(
                        fontFamily: 'Sitka Subheading',
                        fontSize: 20,
                        color: const Color(0xff888888),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(325.0, 5.0, 23.1, 21.0),
                    size: Size(354.0, 30.0),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Sort Logo' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 23.1, 21.0),
                          size: Size(23.1, 21.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 23.1, 21.0),
                                size: Size(23.1, 21.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 3.4, 14.2, 2.6),
                                      size: Size(23.1, 21.0),
                                      pinLeft: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_jzjsw,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 8.6, 14.2, 2.6),
                                      size: Size(23.1, 21.0),
                                      pinLeft: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_z6tsjv,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 13.7, 10.5, 2.6),
                                      size: Size(23.1, 21.0),
                                      pinLeft: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_g5dviw,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(11.6, 0.0, 11.4, 21.0),
                                      size: Size(23.1, 21.0),
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      child: SvgPicture.string(
                                        _svg_nirm8r,
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
            offset: Offset(122.0, 14.0),
            child: Text(
              'Titel der App',
              style: TextStyle(
                fontFamily: 'Sitka Subheading',
                fontSize: 20,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(35.0, 159.0),
            child:
                // Adobe XD layer: 'Album Preview Wiede…' (none)
                SingleChildScrollView(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: [{}, {}, {}, {}, {}, {}].map((map) {
                  return SizedBox(
                    width: 144.0,
                    height: 190.0,
                    child: Stack(
                      children: <Widget>[
                        // Adobe XD layer: 'Album Preview' (group)
                        SizedBox(
                          width: 144.0,
                          height: 190.0,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 144.0, 144.0),
                                size: Size(144.0, 190.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'kanye-west-the-life…' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(9999.0, 9999.0)),
                                    image: DecorationImage(
                                      image: const AssetImage(''),
                                      fit: BoxFit.cover,
                                    ),
                                    border: Border.all(
                                        width: 1.0,
                                        color: const Color(0xff707070)),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(19.0, 153.0, 106.0, 37.0),
                                size: Size(144.0, 190.0),
                                pinLeft: true,
                                pinRight: true,
                                pinBottom: true,
                                fixedHeight: true,
                                child: Text(
                                  'Kanye WestThe life of pablo',
                                  style: TextStyle(
                                    fontFamily: 'Sitka Subheading',
                                    fontSize: 15,
                                    color: const Color(0xffffffff),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(109.0, 117.0, 22.0, 22.0),
                                size: Size(144.0, 190.0),
                                pinRight: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Single Logo' (group)
                                    Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 22.0, 22.0),
                                      size: Size(22.0, 22.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  9999.0, 9999.0)),
                                          color: const Color(0xffffffff),
                                          border: Border.all(
                                              width: 1.0,
                                              color: const Color(0xff707070)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(113.0, 121.0),
                          child:
                              // Adobe XD layer: 'vinyl' (group)
                              SizedBox(
                            width: 14.0,
                            height: 14.0,
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 14.4, 14.4),
                                  size: Size(14.4, 14.4),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child: Stack(
                                    children: <Widget>[
                                      Pinned.fromSize(
                                        bounds:
                                            Rect.fromLTWH(0.0, 0.0, 14.4, 14.4),
                                        size: Size(14.4, 14.4),
                                        pinLeft: true,
                                        pinRight: true,
                                        pinTop: true,
                                        pinBottom: true,
                                        child: Stack(
                                          children: <Widget>[
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  5.8, 5.8, 2.9, 2.9),
                                              size: Size(14.4, 14.4),
                                              fixedWidth: true,
                                              fixedHeight: true,
                                              child: SvgPicture.string(
                                                _svg_orpve9,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Pinned.fromSize(
                                              bounds: Rect.fromLTWH(
                                                  0.0, 0.0, 14.4, 14.4),
                                              size: Size(14.4, 14.4),
                                              pinLeft: true,
                                              pinRight: true,
                                              pinTop: true,
                                              pinBottom: true,
                                              child: SvgPicture.string(
                                                _svg_npihox,
                                                allowDrawingOutsideViewBox:
                                                    true,
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
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 765.0),
            child:
                // Adobe XD layer: 'Botbar' (group)
                SizedBox(
              width: 375.0,
              height: 47.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(-0.2, 0.0, 375.5, 47.2),
                    size: Size(375.5, 47.2),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color(0xff222222),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(324.1, 2.0, 31.4, 45.1),
                    size: Size(375.5, 47.2),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'Games Button' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.9, 35.1, 29.0, 10.0),
                          size: Size(31.4, 45.1),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: Text(
                            'Games',
                            style: TextStyle(
                              fontFamily: 'Sitka Subheading',
                              fontSize: 10,
                              color: const Color(0xffffffff),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 31.4, 31.9),
                          size: Size(31.4, 45.1),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: 'Controller Logo' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 31.4, 31.9),
                                size: Size(31.4, 31.9),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'XMLID_1475_' (group)
                                    Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 31.4, 31.9),
                                      size: Size(31.4, 31.9),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child:
                                          // Adobe XD layer: 'XMLID_1480_' (shape)
                                          SvgPicture.string(
                                        _svg_f9ekw6,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(21.4, 17.1, 3.9, 4.0),
                                      size: Size(31.4, 31.9),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child:
                                          // Adobe XD layer: 'XMLID_1498_' (shape)
                                          SvgPicture.string(
                                        _svg_hviml9,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(16.0, 17.1, 3.9, 4.0),
                                      size: Size(31.4, 31.9),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child:
                                          // Adobe XD layer: 'XMLID_1502_' (shape)
                                          SvgPicture.string(
                                        _svg_l8jbrn,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(6.1, 15.5, 7.1, 7.2),
                                      size: Size(31.4, 31.9),
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child:
                                          // Adobe XD layer: 'XMLID_1508_' (shape)
                                          SvgPicture.string(
                                        _svg_fwhkn9,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(28.4, 20.1, 1.2, 1.2),
                                      size: Size(31.4, 31.9),
                                      pinRight: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child:
                                          // Adobe XD layer: 'XMLID_1522_' (shape)
                                          SvgPicture.string(
                                        _svg_j46eif,
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
                    bounds: Rect.fromLTWH(215.9, 5.0, 43.9, 42.1),
                    size: Size(375.5, 47.2),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'Serien Button' (group)
                        BlendMask(
                      blendMode: BlendMode.srcOver,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(1.1, 32.1, 42.0, 10.0),
                            size: Size(43.9, 42.1),
                            pinLeft: true,
                            pinRight: true,
                            pinBottom: true,
                            fixedHeight: true,
                            child: Text(
                              'TV-Series',
                              style: TextStyle(
                                fontFamily: 'Sitka Subheading',
                                fontSize: 10,
                                color: const Color(0xffffffff),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 43.9, 30.2),
                            size: Size(43.9, 42.1),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            fixedHeight: true,
                            child:
                                // Adobe XD layer: 'Serien Logo' (group)
                                Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(3.0, 0.0, 37.9, 12.2),
                                  size: Size(43.9, 30.2),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child: SvgPicture.string(
                                    _svg_nig5qy,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 3.0, 43.9, 27.2),
                                  size: Size(43.9, 30.2),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child: SvgPicture.string(
                                    _svg_ktsd7j,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(14.3, 7.6, 15.3, 14.2),
                                  size: Size(43.9, 30.2),
                                  fixedWidth: true,
                                  fixedHeight: true,
                                  child: SvgPicture.string(
                                    _svg_t1t33t,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(19.9, 10.9, 5.5, 7.6),
                                  size: Size(43.9, 30.2),
                                  fixedWidth: true,
                                  fixedHeight: true,
                                  child: SvgPicture.string(
                                    _svg_x3uezu,
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
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(122.0, 3.0, 30.0, 44.2),
                    size: Size(375.5, 47.2),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'Movie Button' (group)
                        BlendMask(
                      blendMode: BlendMode.srcOver,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 34.2, 30.0, 10.0),
                            size: Size(30.0, 44.2),
                            pinLeft: true,
                            pinRight: true,
                            pinBottom: true,
                            fixedHeight: true,
                            child: Text(
                              'Movies',
                              style: TextStyle(
                                fontFamily: 'Sitka Subheading',
                                fontSize: 10,
                                color: const Color(0xffffffff),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(1.1, 0.0, 27.7, 32.5),
                            size: Size(30.0, 44.2),
                            pinLeft: true,
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child:
                                // Adobe XD layer: 'Film Logo' (group)
                                Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 27.7, 32.5),
                                  size: Size(27.7, 32.5),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child: SvgPicture.string(
                                    _svg_qvrycp,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(12.0, 22.0, 6.7, 7.6),
                                  size: Size(27.7, 32.5),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child: SvgPicture.string(
                                    _svg_51g8h0,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(13.8, 31.3, 1.2, 1.3),
                                  size: Size(27.7, 32.5),
                                  pinBottom: true,
                                  fixedWidth: true,
                                  fixedHeight: true,
                                  child: SvgPicture.string(
                                    _svg_6r3war,
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
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(29.0, 5.0, 30.7, 42.2),
                    size: Size(375.5, 47.2),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'Music Button' (group)
                        BlendMask(
                      blendMode: BlendMode.srcOver,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(2.0, 32.2, 26.0, 10.0),
                            size: Size(30.7, 42.2),
                            pinLeft: true,
                            pinRight: true,
                            pinBottom: true,
                            fixedHeight: true,
                            child: Text(
                              'Music',
                              style: TextStyle(
                                fontFamily: 'Sitka Subheading',
                                fontSize: 10,
                                color: const Color(0xffffffff),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 30.7, 32.2),
                            size: Size(30.7, 42.2),
                            pinLeft: true,
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child:
                                // Adobe XD layer: 'Headphone Logo' (group)
                                Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 2.0, 27.7, 30.2),
                                  size: Size(30.7, 32.2),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child: SvgPicture.string(
                                    _svg_tsj36p,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(4.0, 0.0, 26.7, 32.2),
                                  size: Size(30.7, 32.2),
                                  pinLeft: true,
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  child: SvgPicture.string(
                                    _svg_1ynq6j,
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_orpve9 =
    '<svg viewBox="5.8 5.8 2.9 2.9" ><path transform="translate(-199.02, -199.02)" d="M 206.2441711425781 204.8000030517578 C 205.4498748779297 204.8000030517578 204.8000030517578 205.4498748779297 204.8000030517578 206.2441711425781 C 204.8000030517578 207.0384521484375 205.4498748779297 207.6883239746094 206.2441711425781 207.6883239746094 C 207.0384521484375 207.6883239746094 207.6883239746094 207.0384521484375 207.6883239746094 206.2441711425781 C 207.6883239746094 205.4498748779297 207.0384521484375 204.8000030517578 206.2441711425781 204.8000030517578 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_npihox =
    '<svg viewBox="0.0 0.0 14.4 14.4" ><path  d="M 7.220794677734375 0 C 3.249357461929321 0 0 3.249357461929321 0 7.220794677734375 C 0 11.19223117828369 3.249357461929321 14.44158935546875 7.220794677734375 14.44158935546875 C 11.19223117828369 14.44158935546875 14.44158935546875 11.19223117828369 14.44158935546875 7.220794677734375 C 14.44158935546875 3.2493577003479 11.19223117828369 0 7.220794677734375 0 Z M 7.220794677734375 10.10911178588867 C 5.632219314575195 10.10911178588867 4.332476615905762 8.809370040893555 4.332476615905762 7.220794677734375 C 4.332476615905762 5.632219314575195 5.632219314575195 4.332476615905762 7.220794677734375 4.332476615905762 C 8.809370040893555 4.332476615905762 10.10911178588867 5.632219314575195 10.10911178588867 7.220794677734375 C 10.10911178588867 8.809370040893555 8.809370040893555 10.10911178588867 7.220794677734375 10.10911178588867 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_k75xx2 =
    '<svg viewBox="12.0 12.0 24.4 25.0" ><path transform="translate(12.0, 12.0)" d="M 17.90462684631348 16.13886451721191 C 19.1052303314209 14.45888137817383 19.8233699798584 12.39532661437988 19.8233699798584 10.15827178955078 C 19.8233699798584 4.558286666870117 15.37678146362305 0.001983642578125 9.911645889282227 0.001983642578125 C 4.446508407592773 0.001983642578125 -3.0517578125e-05 4.558286666870117 -3.0517578125e-05 10.15827178955078 C -3.0517578125e-05 15.75825595855713 4.446556568145752 20.31455993652344 9.91169261932373 20.31455993652344 C 12.09487915039063 20.31455993652344 14.10892963409424 19.57860374450684 15.74846267700195 18.3483772277832 L 22.24184799194336 25.00198364257813 L 24.39810943603516 22.79252052307129 C 24.39810943603516 22.7924690246582 17.90462684631348 16.13886642456055 17.90462684631348 16.13886642456055 Z M 9.911693572998047 17.18952751159668 C 6.127781391143799 17.18952751159668 3.049749612808228 14.03554821014404 3.049749612808228 10.15827178955078 C 3.049749612808228 6.280992984771729 6.127781391143799 3.127013921737671 9.911693572998047 3.127013921737671 C 13.69560527801514 3.127013921737671 16.77363777160645 6.280992984771729 16.77363777160645 10.15827178955078 C 16.77363777160645 14.03554821014404 13.69556045532227 17.18952751159668 9.911694526672363 17.18952751159668 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_d1jk1p =
    '<svg viewBox="11.0 74.0 354.0 30.0" ><path transform="translate(11.0, 74.0)" d="M 0 0 L 354 0 L 354 30 L 0 30 L 0 0 Z" fill="#000000" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jzjsw =
    '<svg viewBox="0.0 3.4 14.2 2.6" ><path transform="translate(0.0, -85.34)" d="M 1.28119421005249 91.32344055175781 L 14.1922025680542 91.32344055175781 L 14.1922025680542 88.76100158691406 L 1.28119421005249 88.76100158691406 C 0.5736421346664429 88.76100158691406 0 89.33464050292969 0 90.04219818115234 C 0 90.749755859375 0.5736421346664429 91.32344055175781 1.28119421005249 91.32344055175781 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_z6tsjv =
    '<svg viewBox="0.0 8.6 14.2 2.6" ><path transform="translate(0.0, -182.76)" d="M 1.28119421005249 193.8804321289063 L 14.1922025680542 193.8804321289063 L 14.1922025680542 191.3179931640625 L 1.28119421005249 191.3179931640625 C 0.5736421346664429 191.3179931640625 0 191.8916320800781 0 192.5992279052734 C 0 193.3068389892578 0.5736421346664429 193.8804321289063 1.28119421005249 193.8804321289063 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_g5dviw =
    '<svg viewBox="0.0 13.7 10.5 2.6" ><path transform="translate(0.0, -280.17)" d="M 1.28119421005249 293.8739624023438 L 1.28119421005249 293.8740234375 C 0.5736421346664429 293.8740234375 0 294.4476318359375 0 295.1552124023438 C 0 295.86279296875 0.5736421346664429 296.4364013671875 1.28119421005249 296.4364013671875 L 10.250807762146 296.4364013671875 C 10.14948558807373 296.1243896484375 10.09599113464355 295.7952270507813 10.09599113464355 295.4576416015625 C 10.09599113464355 294.8922729492188 10.24423980712891 294.3499450683594 10.52113437652588 293.8739624023438 L 1.28119421005249 293.8739624023438 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nirm8r =
    '<svg viewBox="11.6 0.0 11.4 21.0" ><path transform="translate(-220.41, -20.61)" d="M 243.0016784667969 34.74710464477539 C 242.3689880371094 34.11435317993164 241.3430786132813 34.11435317993164 240.7103271484375 34.74710464477539 L 239.3800048828125 36.07743072509766 L 239.3800048828125 22.22920227050781 C 239.3800048828125 21.33434677124023 238.6546020507813 20.6089973449707 237.7597503662109 20.6089973449707 C 236.8648986816406 20.6089973449707 236.1394958496094 21.33439636230469 236.1394958496094 22.22920227050781 L 236.1394958496094 36.07743072509766 L 234.8091735839844 34.74710464477539 C 234.1764221191406 34.11440277099609 233.1505584716797 34.11435317993164 232.5178070068359 34.74710464477539 C 231.8850555419922 35.37985610961914 231.8850555419922 36.40571212768555 232.5178070068359 37.0384635925293 L 236.6138153076172 41.13442611694336 C 237.2453002929688 41.7661247253418 238.2724761962891 41.76828002929688 238.9056701660156 41.13442611694336 L 243.0016784667969 37.0384635925293 C 243.6343994140625 36.40571212768555 243.6344299316406 35.37985610961914 243.0016784667969 34.74710464477539 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_f9ekw6 =
    '<svg viewBox="0.0 0.0 31.4 31.9" ><path transform="translate(0.0, -0.04)" d="M 31.03070640563965 24.52667236328125 L 30.52255821228027 23.13678550720215 C 30.40467071533203 22.81438446044922 30.05210113525391 22.65006828308105 29.73476791381836 22.76991271972656 C 29.41755867004395 22.8897533416748 29.25597763061523 23.24827766418457 29.37386322021484 23.57074165344238 L 29.88195037841797 24.96062850952148 C 30.36509132385254 26.28224754333496 30.18813323974609 27.70421409606934 29.39641189575195 28.86189651489258 C 28.60469627380371 30.01957702636719 27.35514450073242 30.68356513977051 25.96810150146484 30.68356513977051 C 24.50947570800781 30.68356513977051 23.18125343322754 29.93025779724121 22.41508674621582 28.66849136352539 L 21.79462814331055 27.64665794372559 C 22.01975059509277 27.2581672668457 22.14946746826172 26.8060245513916 22.14946746826172 26.32342338562012 C 22.14946746826172 24.88089942932129 20.99501037597656 23.70733833312988 19.57597732543945 23.70733833312988 C 18.36808586120605 23.70733833312988 17.35247421264648 24.5578727722168 17.07680702209473 25.7005443572998 L 14.29977130889893 25.7005443572998 C 14.02410221099854 24.5578727722168 13.0084285736084 23.70733833312988 11.80060386657715 23.70733833312988 C 10.38157176971436 23.70733833312988 9.227114677429199 24.88089942932129 9.227114677429199 26.32342338562012 C 9.227114677429199 26.80596351623535 9.356832504272461 27.25811386108398 9.581889152526855 27.64659690856934 L 8.961432456970215 28.66849136352539 C 8.195266723632813 29.93025779724121 6.867039680480957 30.68356513977051 5.408420562744141 30.68356513977051 C 4.021432399749756 30.68356513977051 2.771880388259888 30.01957702636719 1.98016357421875 28.86189651489258 C 1.18844735622406 27.70421600341797 1.011428117752075 26.28224945068359 1.494631409645081 24.96063041687012 L 4.432148933410645 16.92520332336426 C 5.182811737060547 14.87182903289795 7.135049343109131 13.49215793609619 9.289982795715332 13.49215793609619 L 22.08672142028809 13.49215793609619 C 24.24165344238281 13.49215793609619 26.19388771057129 14.87176704406738 26.94455528259277 16.92520332336426 L 27.45269775390625 18.31527900695801 C 27.57058334350586 18.63774108886719 27.92333793640137 18.80205726623535 28.2404899597168 18.68215370178223 C 28.55770492553711 18.56231307983398 28.71928024291992 18.20378494262695 28.60139083862305 17.88132286071777 L 28.0932502746582 16.49124526977539 C 27.16507530212402 13.95227718353271 24.7512035369873 12.2464017868042 22.08672142028809 12.2464017868042 L 20.65886497497559 12.2464017868042 C 20.36756706237793 10.5503101348877 18.90956497192383 9.256589889526367 17.15897941589355 9.256589889526367 L 16.30108833312988 9.256589889526367 L 16.30108833312988 8.789431571960449 C 16.30108833312988 6.951945304870605 14.83052253723145 5.457040309906006 13.02295112609863 5.457040309906006 L 6.589225292205811 5.457040309906006 C 5.457376956939697 5.457040309906006 4.536558151245117 4.520980834960938 4.536558151245117 3.370402574539185 C 4.536558151245117 2.219824075698853 5.457376956939697 1.283764004707336 6.589225292205811 1.283764004707336 L 15.69613361358643 1.283764004707336 C 16.0345458984375 1.283764004707336 16.30887031555176 1.004901766777039 16.30887031555176 0.660886824131012 C 16.30887031555176 0.3168718218803406 16.0345458984375 0.0380096398293972 15.69613361358643 0.0380096398293972 L 6.589223861694336 0.0380096398293972 C 4.781651973724365 0.0380096398293972 3.311087131500244 1.532914996147156 3.311087131500244 3.370402574539185 C 3.311087131500244 5.20789098739624 4.781651973724365 6.702794551849365 6.589223861694336 6.702794551849365 L 13.02295112609863 6.702794551849365 C 14.15479469299316 6.702794551849365 15.07561683654785 7.638855457305908 15.07561683654785 8.789431571960449 L 15.07561683654785 9.256589889526367 L 14.21778678894043 9.256589889526367 C 12.46719932556152 9.256589889526367 11.00919342041016 10.5503101348877 10.7179012298584 12.2464017868042 L 9.289981842041016 12.2464017868042 C 6.625497341156006 12.2464017868042 4.211624145507813 13.9522762298584 3.283452272415161 16.49124526977539 L 0.3459345400333405 24.52667617797852 C -0.2790560722351074 26.23622131347656 -0.05013794079422951 28.07551765441895 0.9739888906478882 29.57303619384766 C 1.998054265975952 31.07049751281738 3.614391326904297 31.92938232421875 5.408542156219482 31.92938232421875 C 7.295278549194336 31.92938232421875 9.01332950592041 30.95495223999023 10.00430679321289 29.3228874206543 L 10.46735382080078 28.56036376953125 C 10.85644149780273 28.80097961425781 11.31292915344238 28.93963050842285 11.80072593688965 28.93963050842285 C 13.00861072540283 28.93963050842285 14.0242223739624 28.08909034729004 14.29989242553711 26.94642639160156 L 17.07686996459961 26.94642639160156 C 17.3525390625 28.08909034729004 18.36820983886719 28.93963050842285 19.57603645324707 28.93963050842285 C 20.06377601623535 28.93963050842285 20.52019882202148 28.80097579956055 20.90928840637207 28.5604190826416 L 21.37227249145508 29.32288551330566 C 22.36331176757813 30.95501327514648 24.08135986328125 31.92937469482422 25.96809959411621 31.92937469482422 C 27.76218605041504 31.92937469482422 29.37852668762207 31.07049560546875 30.402587890625 29.57303047180176 C 31.4267749786377 28.07551193237305 31.65569305419922 26.2362174987793 31.03070640563965 24.52667045593262 Z M 14.21778774261475 10.50234413146973 L 17.15897941589355 10.50234413146973 C 18.23090171813965 10.50234413146973 19.13591384887695 11.24244499206543 19.40551376342773 12.24640083312988 L 11.97119140625 12.24640083312988 C 12.24079513549805 11.24250602722168 13.1458683013916 10.50234413146973 14.21778774261475 10.50234413146973 Z M 11.80066680908203 27.69381141662598 C 11.05735874176025 27.69381141662598 10.45265007019043 27.07909774780273 10.45265007019043 26.32348823547363 C 10.45265007019043 25.5678768157959 11.05735874176025 24.95315170288086 11.80066680908203 24.95315170288086 C 12.54397583007813 24.95315170288086 13.14868545532227 25.5678768157959 13.14868545532227 26.32348823547363 C 13.14868545532227 27.07903861999512 12.54397583007813 27.69381141662598 11.80066680908203 27.69381141662598 Z M 18.22807884216309 26.32348823547363 C 18.22807884216309 25.5678768157959 18.83278846740723 24.95315170288086 19.57609939575195 24.95315170288086 C 20.31941032409668 24.95315170288086 20.92411422729492 25.5678768157959 20.92411422729492 26.32348823547363 C 20.92411422729492 27.07909774780273 20.31941032409668 27.69381141662598 19.57609939575195 27.69381141662598 C 18.83278846740723 27.69381141662598 18.22807884216309 27.07903861999512 18.22807884216309 26.32348823547363 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hviml9 =
    '<svg viewBox="21.4 17.1 3.9 4.0" ><path transform="translate(-327.51, -257.75)" d="M 348.8861083984375 276.8641967773438 C 348.8861083984375 277.9632568359375 349.7657165527344 278.857421875 350.8468627929688 278.857421875 C 351.9280395507813 278.857421875 352.8075866699219 277.9632568359375 352.8075866699219 276.8641967773438 C 352.8075866699219 275.7651062011719 351.9280395507813 274.8709716796875 350.8468627929688 274.8709716796875 C 349.7657165527344 274.8709716796875 348.8861083984375 275.7651672363281 348.8861083984375 276.8641967773438 Z M 351.5821228027344 276.8641967773438 C 351.5821228027344 277.2763671875 351.2522583007813 277.6116638183594 350.8468627929688 277.6116638183594 C 350.4413757324219 277.6116638183594 350.111572265625 277.2763671875 350.111572265625 276.8641967773438 C 350.111572265625 276.4519958496094 350.4413757324219 276.1167297363281 350.8468627929688 276.1167297363281 C 351.2522583007813 276.1167297363281 351.5821228027344 276.4520568847656 351.5821228027344 276.8641967773438 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_l8jbrn =
    '<svg viewBox="16.0 17.1 3.9 4.0" ><path transform="translate(-244.9, -257.75)" d="M 260.885986328125 276.8641967773438 C 260.885986328125 277.9632568359375 261.7655639648438 278.857421875 262.8466796875 278.857421875 C 263.9278564453125 278.857421875 264.8074951171875 277.9632568359375 264.8074951171875 276.8641967773438 C 264.8074951171875 275.7651062011719 263.9278564453125 274.8709716796875 262.8466796875 274.8709716796875 C 261.7655639648438 274.8709716796875 260.885986328125 275.7651672363281 260.885986328125 276.8641967773438 Z M 263.58203125 276.8641967773438 C 263.58203125 277.2763671875 263.2522583007813 277.6116638183594 262.8466796875 277.6116638183594 C 262.4412841796875 277.6116638183594 262.1115112304688 277.2763671875 262.1115112304688 276.8641967773438 C 262.1115112304688 276.4519958496094 262.4412841796875 276.1167297363281 262.8466796875 276.1167297363281 C 263.2522583007813 276.1167297363281 263.58203125 276.4520568847656 263.58203125 276.8641967773438 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fwhkn9 =
    '<svg viewBox="6.1 15.5 7.1 7.2" ><path transform="translate(-93.12, -233.37)" d="M 102.7468643188477 248.8720092773438 C 101.7731704711914 248.8720092773438 100.9738540649414 249.6456298828125 100.912467956543 250.619873046875 C 99.95401000976563 250.6823120117188 99.19300842285156 251.4947814941406 99.19300842285156 252.4846801757813 C 99.19300842285156 253.4745178222656 99.95401000976563 254.2870178222656 100.912467956543 254.3494262695313 C 100.9739151000977 255.3236999511719 101.7731704711914 256.0973510742188 102.7468643188477 256.0973510742188 C 103.720573425293 256.0973510742188 104.5198745727539 255.3236999511719 104.5812530517578 254.3494262695313 C 105.5397186279297 254.2870178222656 106.3007431030273 253.4745178222656 106.3007431030273 252.4846801757813 C 106.3007431030273 251.4947814941406 105.5397186279297 250.6823120117188 104.5812530517578 250.619873046875 C 104.5198135375977 249.6455383300781 103.7204895019531 248.8720092773438 102.7468643188477 248.8720092773438 Z M 105.0752639770508 252.484619140625 C 105.0752639770508 252.8280639648438 104.8003845214844 253.1074523925781 104.462532043457 253.1074523925781 L 103.9723281860352 253.1074523925781 C 103.6339111328125 253.1074523925781 103.3596038818359 253.3863830566406 103.3596038818359 253.7304077148438 L 103.3596038818359 254.2286987304688 C 103.3596038818359 254.5721435546875 103.0847320556641 254.8515625 102.7468643188477 254.8515625 C 102.4090118408203 254.8515625 102.1341171264648 254.5721435546875 102.1341171264648 254.2286987304688 L 102.1341171264648 253.7304077148438 C 102.1341171264648 253.3863830566406 101.8598098754883 253.1074523925781 101.5213851928711 253.1074523925781 L 101.0312042236328 253.1074523925781 C 100.6933364868164 253.1074523925781 100.4184722900391 252.8280639648438 100.4184722900391 252.484619140625 C 100.4184722900391 252.14111328125 100.6933364868164 251.8616943359375 101.0312042236328 251.8616943359375 L 101.5213851928711 251.8616943359375 C 101.8598098754883 251.8616943359375 102.1341171264648 251.5828247070313 102.1341171264648 251.2388610839844 L 102.1341171264648 250.7405395507813 C 102.1341171264648 250.3970947265625 102.4090118408203 250.1176452636719 102.7468643188477 250.1176452636719 C 103.0847320556641 250.1176452636719 103.3596038818359 250.3970947265625 103.3596038818359 250.7405395507813 L 103.3596038818359 251.2388610839844 C 103.3596038818359 251.5828247070313 103.6339111328125 251.8616943359375 103.9723281860352 251.8616943359375 L 104.462532043457 251.8616943359375 C 104.8003845214844 251.8616943359375 105.0752639770508 252.14111328125 105.0752639770508 252.484619140625 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_j46eif =
    '<svg viewBox="28.4 20.1 1.2 1.2" ><path transform="translate(-434.71, -302.1)" d="M 463.0879821777344 322.7909240722656 C 463.0879821777344 322.9552612304688 463.1535339355469 323.1153259277344 463.2675170898438 323.2318725585938 C 463.3815002441406 323.3477172851563 463.5389099121094 323.4143676757813 463.7007141113281 323.4143676757813 C 463.8618774414063 323.4143676757813 464.0199584960938 323.3477172851563 464.1339416503906 323.2318725585938 C 464.2479248046875 323.1153259277344 464.3134460449219 322.9552612304688 464.3134460449219 322.7909240722656 C 464.3134460449219 322.6270446777344 464.2479248046875 322.46630859375 464.1339416503906 322.3504638671875 C 464.0199584960938 322.234619140625 463.8618774414063 322.16796875 463.7007141113281 322.16796875 C 463.5389099121094 322.16796875 463.3815002441406 322.234619140625 463.2675170898438 322.3504638671875 C 463.1535339355469 322.46630859375 463.0879821777344 322.6271057128906 463.0879821777344 322.7909240722656 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nig5qy =
    '<svg viewBox="3.0 0.0 37.9 12.2" ><path transform="translate(-32.01, -75.44)" d="M 35.66175079345703 87.62496948242188 C 36.01782608032227 87.62496948242188 36.30654144287109 87.32346343994141 36.30654144287109 86.95161437988281 L 36.30654144287109 78.69265747070313 C 36.30654144287109 77.63895416259766 37.12739562988281 76.78163909912109 38.13648986816406 76.78163909912109 L 69.81843566894531 76.78163909912109 C 70.82746124267578 76.78163909912109 71.64839172363281 77.63884735107422 71.64839172363281 78.69266510009766 L 71.64839172363281 83.71968078613281 C 71.64839172363281 84.09152221679688 71.93702697753906 84.39303588867188 72.29319000244141 84.39303588867188 C 72.64933776855469 84.39303588867188 72.93798065185547 84.09152221679688 72.93798065185547 83.71968078613281 L 72.93798065185547 78.69266510009766 C 72.93798065185547 76.89631652832031 71.53857421875 75.43501281738281 69.81852722167969 75.43501281738281 L 38.13649368286133 75.43501281738281 C 36.41636657714844 75.43501281738281 35.01705169677734 76.89642333984375 35.01705169677734 78.69266510009766 L 35.01705169677734 86.95161437988281 C 35.01705169677734 87.32356262207031 35.30569076538086 87.62496948242188 35.6617546081543 87.62496948242188 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ktsd7j =
    '<svg viewBox="0.0 3.0 43.9 27.2" ><path transform="translate(0.0, -106.14)" d="M 43.27627182006836 131.4386444091797 L 40.91706466674805 131.4386444091797 L 40.91706466674805 116.5153503417969 C 40.91706466674805 116.1707229614258 40.62841033935547 115.8912963867188 40.27239990234375 115.8912963867188 C 39.91639709472656 115.8912963867188 39.62773895263672 116.1707229614258 39.62773895263672 116.5153503417969 L 39.62773895263672 131.4386444091797 L 38.02565383911133 131.4386444091797 L 38.02565383911133 127.5672988891602 C 38.02565383911133 127.2226791381836 37.73698806762695 126.943229675293 37.38098526000977 126.943229675293 C 37.02498626708984 126.943229675293 36.736328125 127.2226791381836 36.736328125 127.5672988891602 L 36.736328125 131.4386444091797 L 25.91819953918457 131.4386444091797 C 25.56219863891602 131.4386444091797 25.27353477478027 131.7180480957031 25.27353477478027 132.0626831054688 L 25.27353477478027 132.5427398681641 C 25.27353477478027 132.66259765625 25.17282676696777 132.7600708007813 25.04903984069824 132.7600708007813 L 17.14488792419434 132.7600708007813 C 17.02110290527344 132.7600708007813 16.9203929901123 132.66259765625 16.9203929901123 132.5427398681641 L 16.9203929901123 132.0626831054688 C 16.9203929901123 131.7180480957031 16.6317310333252 131.4386444091797 16.27573204040527 131.4386444091797 L 7.184337615966797 131.4386444091797 L 7.184337615966797 110.3881072998047 L 36.73641204833984 110.3881072998047 L 36.73641204833984 125.0711517333984 C 36.73641204833984 125.415771484375 37.02507400512695 125.6952056884766 37.38107299804688 125.6952056884766 C 37.73707962036133 125.6952056884766 38.02573394775391 125.415771484375 38.02573394775391 125.0711517333984 L 38.02573394775391 109.7640533447266 C 38.02573394775391 109.4194183349609 37.73707962036133 109.1399841308594 37.38107299804688 109.1399841308594 L 6.539764881134033 109.1399841308594 C 6.183764457702637 109.1399841308594 5.89510440826416 109.4193344116211 5.89510440826416 109.7640533447266 L 5.89510440826416 131.4386444091797 L 4.293015956878662 131.4386444091797 L 4.293015956878662 119.5106582641602 C 4.293015956878662 119.1660385131836 4.004355430603027 118.886604309082 3.648354768753052 118.886604309082 C 3.292354822158813 118.886604309082 3.0036940574646 119.1660385131836 3.0036940574646 119.5106582641602 L 3.0036940574646 131.4386444091797 L 0.644568920135498 131.4386444091797 C 0.2885685563087463 131.4386444091797 -9.202957880916074e-05 131.7180480957031 -9.202957880916074e-05 132.0626831054688 L -9.202957880916074e-05 133.9606018066406 C -9.202957880916074e-05 135.2670745849609 1.097847580909729 136.3299407958984 2.447475671768188 136.3299407958984 L 41.47327423095703 136.3299407958984 C 42.82290267944336 136.3299407958984 43.92083740234375 135.2670135498047 43.92083740234375 133.9606018066406 L 43.92083740234375 132.0626831054688 C 43.92093276977539 131.7179718017578 43.63226699829102 131.4386444091797 43.27626800537109 131.4386444091797 Z M 42.63169860839844 133.9606018066406 C 42.63169860839844 134.5789184570313 42.11211395263672 135.0819091796875 41.47337341308594 135.0819091796875 L 2.447481632232666 135.0819091796875 C 1.808739900588989 135.0819091796875 1.289150595664978 134.5789184570313 1.289150595664978 133.9606018066406 L 1.289150595664978 132.6867218017578 L 15.63854122161865 132.6867218017578 C 15.71351623535156 133.4273986816406 16.36049270629883 134.0081024169922 17.14506530761719 134.0081024169922 L 25.04921913146973 134.0081024169922 C 25.83370399475098 134.0081024169922 26.48077011108398 133.4273834228516 26.55574607849121 132.6867218017578 L 42.63169479370117 132.6867218017578 L 42.63169860839844 133.9606018066406 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_t1t33t =
    '<svg viewBox="14.3 7.6 15.3 14.2" ><path transform="translate(-152.46, -154.11)" d="M 170.3684234619141 174.1348571777344 C 170.1909484863281 174.4203643798828 170.296630859375 174.7853698730469 170.6044311523438 174.9499969482422 C 171.7606048583984 175.5683135986328 173.0808868408203 175.89501953125 174.4225463867188 175.89501953125 C 178.6432647705078 175.89501953125 182.0770721435547 172.7099609375 182.0770721435547 168.7950439453125 C 182.0770721435547 164.8801116943359 178.6432647705078 161.6949920654297 174.4225463867188 161.6949920654297 C 170.2018432617188 161.6949920654297 166.7680206298828 164.8800201416016 166.7680206298828 168.7950439453125 C 166.7680206298828 170.41552734375 167.3721160888672 172.0004425048828 168.4690246582031 173.2579345703125 C 168.6924896240234 173.51416015625 169.09765625 173.5537872314453 169.3738555908203 173.3465118408203 C 169.6500854492188 173.1392364501953 169.6929016113281 172.7634429931641 169.4693298339844 172.5072021484375 C 168.5439300537109 171.4463348388672 168.0547485351563 170.1626586914063 168.0547485351563 168.7950439453125 C 168.0547485351563 165.5382232666016 170.9113464355469 162.8885040283203 174.4225463867188 162.8885040283203 C 177.9337310791016 162.8885040283203 180.7903289794922 165.5381469726563 180.7903289794922 168.7950439453125 C 180.7903289794922 172.0518646240234 177.9337310791016 174.7014770507813 174.4225463867188 174.7014770507813 C 173.3061676025391 174.7014770507813 172.2080688476563 174.4298400878906 171.2471160888672 173.9158935546875 C 170.9394073486328 173.7514343261719 170.5460052490234 173.8493041992188 170.3684234619141 174.1348571777344 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x3uezu =
    '<svg viewBox="19.9 10.9 5.5 7.6" ><path transform="translate(-211.58, -196.42)" d="M 232.0742797851563 214.9331359863281 C 232.2090454101563 214.9331359863281 232.3430633544922 214.8901519775391 232.4556732177734 214.8058166503906 L 236.6634521484375 211.6581420898438 C 236.8281402587891 211.534912109375 236.9255065917969 211.3393249511719 236.9255065917969 211.1314392089844 C 236.9255065917969 210.9234619140625 236.8282470703125 210.7278594970703 236.6634521484375 210.6046295166016 L 232.4556732177734 207.4569702148438 C 232.2602996826172 207.3108215332031 232.0005798339844 207.2887573242188 231.7840270996094 207.4001007080078 C 231.5675048828125 207.5113830566406 231.4309997558594 207.737060546875 231.4309997558594 207.9837646484375 L 231.4309997558594 214.2790222167969 C 231.4309997558594 214.5257415771484 231.5675048828125 214.7514038085938 231.7840270996094 214.8626708984375 C 231.8757934570313 214.9098510742188 231.9752197265625 214.9331359863281 232.0742797851563 214.9331359863281 Z M 232.7177886962891 209.2771453857422 L 235.1966552734375 211.1315307617188 L 232.7177886962891 212.9858856201172 L 232.7177886962891 209.2771453857422 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qvrycp =
    '<svg viewBox="0.0 0.0 27.7 32.5" ><path transform="translate(0.0, 0.0)" d="M 27.05837821960449 13.13582706451416 L 6.105544567108154 13.13582706451416 L 26.2309455871582 7.102400779724121 C 26.38736152648926 7.055476188659668 26.51930236816406 6.945991039276123 26.59799194335938 6.798519611358643 C 26.67667961120605 6.650799751281738 26.69539070129395 6.477011680603027 26.65004730224609 6.315140724182129 L 25.59689140319824 2.552628993988037 C 25.17611122131348 1.049860239028931 23.82403373718262 0.0001754760887706652 22.30882835388184 0.0001754760887706652 C 21.98952102661133 0.0001754760887706652 21.67141342163086 0.04709824174642563 21.36290550231934 0.1394544541835785 L 2.467203140258789 5.804201126098633 C 1.593247056007385 6.06612491607666 0.8689945936203003 6.667430400848389 0.4273396730422974 7.496896266937256 C -0.01407553907483816 8.326361656188965 -0.1177121549844742 9.281448364257813 0.1353816539049149 10.18564605712891 L 1.164310455322266 13.86151027679443 L 1.164310455322266 29.0041675567627 C 1.164310455322266 30.95456886291504 2.697505712509155 32.54125595092773 4.581917285919189 32.54125595092773 L 11.96170425415039 32.54125595092773 C 12.3009204864502 32.54125595092773 12.57584762573242 32.25674057006836 12.57584762573242 31.90568542480469 C 12.57584762573242 31.55463790893555 12.3009204864502 31.27011871337891 11.96170425415039 31.27011871337891 L 4.58216381072998 31.27011871337891 C 3.374745845794678 31.27011871337891 2.392602205276489 30.25370597839355 2.392602205276489 29.0041675567627 L 2.392602205276489 20.35498237609863 L 5.538887500762939 20.35498237609863 L 5.540326595306396 20.35498237609863 L 5.541526794433594 20.35498237609863 L 10.35103225708008 20.35498237609863 L 10.35247230529785 20.35498237609863 L 10.35391139984131 20.35498237609863 L 15.16341686248779 20.35498237609863 L 15.16485500335693 20.35498237609863 L 15.16629409790039 20.35498237609863 L 19.97580528259277 20.35498237609863 L 19.97724533081055 20.35498237609863 L 19.97844123840332 20.35498237609863 L 26.4442024230957 20.35498237609863 L 26.4442024230957 29.0041675567627 C 26.4442024230957 30.25371170043945 25.46205520629883 31.27011871337891 24.254638671875 31.27011871337891 L 16.87485313415527 31.27011871337891 C 16.53587341308594 31.27011871337891 16.26070976257324 31.55463790893555 16.26070976257324 31.90568542480469 C 16.26070976257324 32.25674057006836 16.53587341308594 32.54125595092773 16.87485313415527 32.54125595092773 L 24.254638671875 32.54125595092773 C 26.13929176330566 32.54125595092773 27.67248725891113 30.95456886291504 27.67248725891113 29.0041675567627 L 27.67248725891113 13.77138614654541 C 27.67248725891113 13.420334815979 27.39756202697754 13.13582038879395 27.0583438873291 13.13582038879395 Z M 16.22907638549805 19.0838451385498 L 18.83846473693848 14.40696334838867 L 22.23232269287109 14.40696334838867 L 19.62317276000977 19.0838451385498 L 16.22907638549805 19.0838451385498 Z M 11.41668701171875 19.0838451385498 L 14.02607536315918 14.40696334838867 L 17.41993522644043 14.40696334838867 L 14.8107852935791 19.0838451385498 L 11.41668701171875 19.0838451385498 Z M 6.604540824890137 19.0838451385498 L 9.213689804077148 14.40696334838867 L 12.60778617858887 14.40696334838867 L 9.998397827148438 19.0838451385498 L 6.604540824890137 19.0838451385498 Z M 8.887905120849609 10.85597515106201 L 4.518377780914307 6.512765407562256 L 7.792287826538086 5.531359195709229 C 7.81531810760498 5.566117763519287 7.842187881469727 5.598888874053955 7.872894287109375 5.629425525665283 L 12.2424201965332 9.972633361816406 L 8.968511581420898 10.95404148101807 C 8.94548225402832 10.91928386688232 8.918373107910156 10.88626289367676 8.887907028198242 10.85597515106201 Z M 17.1174201965332 2.857989072799683 L 21.48694801330566 7.201200485229492 L 18.21303749084473 8.182605743408203 C 18.19000816345215 8.147846221923828 18.16313934326172 8.114827156066895 18.13243293762207 8.084540367126465 L 13.76290225982666 3.741329193115234 L 17.03681373596191 2.759923219680786 C 17.05984306335449 2.79468035697937 17.08671188354492 2.827452182769775 17.1174201965332 2.857989072799683 Z M 12.49503612518311 4.243825912475586 L 16.86456680297852 8.586788177490234 L 13.59065723419189 9.568442344665527 C 13.56762504577637 9.533684730529785 13.54075527191162 9.500663757324219 13.51004886627197 9.470376014709473 L 9.140522003173828 5.127166748046875 L 12.41442966461182 4.145760059356689 C 12.43769931793213 4.180269241333008 12.46456813812256 4.2132887840271 12.49503612518311 4.243825912475586 Z M 21.70478439331055 1.360432863235474 C 21.9019832611084 1.301344871520996 22.10517692565918 1.271304607391357 22.30885124206543 1.271304607391357 C 23.28068351745605 1.271304607391357 24.14743995666504 1.943614721298218 24.41708755493164 2.906404733657837 L 25.2994384765625 6.058173179626465 L 22.83543014526367 6.796773433685303 C 22.81216049194336 6.762015819549561 22.78529167175293 6.729244232177734 22.75458335876465 6.698707580566406 L 18.38529586791992 2.355743885040283 L 21.70478439331055 1.360432863235474 Z M 1.503292202949524 8.110099792480469 C 1.786373972892761 7.578061103820801 2.250102281570435 7.192747592926025 2.809064149856567 7.025167465209961 L 3.169872999191284 6.916921615600586 C 3.193143367767334 6.951679706573486 3.220011949539185 6.984699249267578 3.250479221343994 7.014987468719482 L 7.620008945465088 11.35819625854492 L 2.197555541992188 12.98386001586914 L 1.315204620361328 9.832091331481934 C 1.153272271156311 9.253872871398926 1.220203995704651 8.642383575439453 1.503285884857178 8.110095977783203 Z M 2.392601251602173 14.40693759918213 L 7.795382976531982 14.40693759918213 L 5.186233043670654 19.08382415771484 L 2.392601013183594 19.08382415771484 L 2.392601251602173 14.40693759918213 Z M 21.04141998291016 19.08382415771484 L 23.65056800842285 14.40693664550781 L 26.4442024230957 14.40693664550781 L 26.4442024230957 19.08382415771484 L 21.04141998291016 19.08382415771484 Z M 21.04141998291016 19.08382415771484" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_51g8h0 =
    '<svg viewBox="12.0 22.0 6.7 7.6" ><path transform="translate(-184.07, -322.39)" d="M 202.7391510009766 348.2100830078125 C 202.7391510009766 347.9853210449219 202.6212005615234 347.7777404785156 202.4298400878906 347.6654968261719 L 196.9945068359375 344.4754638671875 C 196.8031005859375 344.3632202148438 196.5672302246094 344.3632202148438 196.3758544921875 344.4754638671875 C 196.1844482421875 344.5877685546875 196.0665130615234 344.7953796386719 196.0665130615234 345.0201416015625 L 196.0665130615234 351.4000854492188 C 196.0665130615234 351.6245727539063 196.1844482421875 351.8322143554688 196.3758544921875 351.9444885253906 C 196.4715270996094 352.000732421875 196.578369140625 352.0290222167969 196.6851959228516 352.0290222167969 C 196.7919769287109 352.0290222167969 196.8988037109375 352.000732421875 196.9945068359375 351.9444885253906 L 202.4298400878906 348.7547302246094 C 202.6212005615234 348.6424560546875 202.7391510009766 348.4349060058594 202.7391510009766 348.2100830078125 Z M 197.3038330078125 350.310791015625 L 197.3038330078125 346.1094055175781 L 200.8831634521484 348.2100830078125 L 197.3038330078125 350.310791015625 Z M 197.3038330078125 350.310791015625" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6r3war =
    '<svg viewBox="13.8 31.3 1.2 1.3" ><path transform="translate(-211.0, -460.72)" d="M 225.3916625976563 492.0000305175781 C 225.0509185791016 492.0000305175781 224.7729797363281 492.2825317382813 224.7729797363281 492.6289367675781 C 224.7729797363281 492.9753112792969 225.0509185791016 493.2578735351563 225.3916625976563 493.2578735351563 C 225.7326354980469 493.2578735351563 226.0103149414063 492.9753112792969 226.0103149414063 492.6289367675781 C 226.0103149414063 492.2825317382813 225.7326354980469 492.0000305175781 225.3916625976563 492.0000305175781 Z M 225.3916625976563 492.0000305175781" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tsj36p =
    '<svg viewBox="0.0 2.0 27.7 30.2" ><path transform="translate(-10.2, -34.88)" d="M 25.76787567138672 37.83692932128906 C 31.31117820739746 37.83692932128906 35.07722854614258 39.64723587036133 36.96142578125 43.21752548217773 C 37.08433532714844 43.45059967041016 37.37247085571289 43.53955459594727 37.60496520996094 43.41622924804688 C 37.83734893798828 43.2928352355957 37.92605209350586 43.00391006469727 37.80301666259766 42.77079391479492 C 35.74079132080078 38.86328887939453 31.69167900085449 36.88199234008789 25.76787567138672 36.88199234008789 C 20.56801223754883 36.88199234008789 16.7961311340332 38.42066955566406 14.55696773529053 41.45526123046875 C 12.8552303314209 43.76143646240234 12.06217193603516 46.98137664794922 12.26338291168213 50.76706695556641 C 12.41397380828857 53.60036849975586 13.05460166931152 55.72970962524414 13.08178329467773 55.81898880004883 C 13.08425521850586 55.82704544067383 13.0869140625 55.83505630493164 13.08982753753662 55.84307098388672 L 13.76048755645752 57.68743515014648 C 13.76067924499512 57.68787002563477 13.7608060836792 57.68826675415039 13.76093101501465 57.68870162963867 L 16.75242233276367 65.91557312011719 L 16.7531795501709 65.91766357421875 L 16.8027229309082 66.05388641357422 C 15.46532917022705 65.81536102294922 14.34023475646973 64.90330505371094 13.83346939086914 63.59644317626953 L 12.82323837280273 60.99105072021484 C 12.44989490509033 60.02804565429688 12.34504413604736 58.9808464050293 12.52002620697021 57.96267700195313 C 12.53358459472656 57.88376617431641 12.52712059020996 57.80263137817383 12.5012731552124 57.72689056396484 C 12.49196147918701 57.69969177246094 11.56947135925293 54.96710586547852 11.25333690643311 51.44999313354492 C 11.06847190856934 49.39257431030273 11.12568092346191 47.47895050048828 11.42350578308105 45.76223754882813 C 11.79177665710449 43.63893127441406 12.53130435943604 41.81420135498047 13.62155342102051 40.33880615234375 C 13.77816390991211 40.12690734863281 13.73381519317627 39.82794570922852 13.52253246307373 39.67086791992188 C 13.31112194061279 39.51380157470703 13.01297855377197 39.55834197998047 12.85655879974365 39.77018737792969 C 11.67837715148926 41.36452484130859 10.88107204437256 43.32301330566406 10.48669624328613 45.59119033813477 C 10.17423820495605 47.38834381103516 10.11265754699707 49.38394165039063 10.30385684967041 51.52236938476563 C 10.59528732299805 54.78220748901367 11.37763500213623 57.34838485717773 11.56218528747559 57.92023849487305 C 11.38580989837646 59.07144546508789 11.51435375213623 60.25017547607422 11.93571662902832 61.33708190917969 L 12.94595146179199 63.94246673583984 C 13.30472469329834 64.86779022216797 13.92634773254395 65.65319061279297 14.74341773986816 66.21382141113281 C 15.56042289733887 66.77436065673828 16.51554298400879 67.07071685791016 17.50556755065918 67.07071685791016 C 17.82601356506348 67.07967376708984 18.07106018066406 66.72848510742188 17.95284271240234 66.42967224121094 L 17.92724609375 66.35933685302734 L 20.55533790588379 66.78414916992188 C 20.63510131835938 66.79768371582031 20.7179012298584 66.78810119628906 20.79417991638184 66.76132965087891 L 22.66431617736816 66.0772705078125 C 23.26009750366211 65.85939025878906 23.73555755615234 65.42192840576172 24.00316047668457 64.84530639648438 C 24.2707691192627 64.26875305175781 24.2984561920166 63.62222290039063 24.08121681213379 63.02476501464844 L 22.43149185180664 58.4879150390625 C 22.34146499633789 58.24016189575195 22.06815719604492 58.11232757568359 21.82114219665527 58.20293045043945 C 21.57412528991699 58.29328536987305 21.44691276550293 58.56732559204102 21.53700256347656 58.81506729125977 L 23.18672752380371 63.35193634033203 C 23.31685829162598 63.70977783203125 23.30025672912598 64.09700775146484 23.13997459411621 64.44226837158203 C 22.97968673706055 64.78755187988281 22.69497489929199 65.04959106445313 22.33816719055176 65.18009948730469 L 20.91524887084961 65.70055389404297 L 17.08439254760742 55.1655387878418 L 18.5073127746582 54.64509201049805 C 19.24398803710938 54.37594223022461 20.06162261962891 54.75748825073242 20.33017730712891 55.49619674682617 L 20.8823070526123 57.01454925537109 C 21.12095642089844 57.60286331176758 21.9724292755127 57.28572845458984 21.77679634094238 56.68732070922852 L 21.22466850280762 55.16896820068359 C 20.77618980407715 53.9356689453125 19.41085624694824 53.29804229736328 18.18110275268555 53.74796295166016 L 16.31648445129395 54.43001174926758 C 16.23836898803711 54.45796966552734 16.1678581237793 54.50632476806641 16.11343765258789 54.56884384155273 L 14.37514209747314 56.59074401855469 L 13.9890661239624 55.52898788452148 C 13.93939685821533 55.36067199707031 13.34913158416748 53.31240081787109 13.21285915374756 50.6920280456543 C 13.08399868011475 48.21487426757813 13.34571266174316 44.69965744018555 15.32449340820313 42.02025985717773 C 17.37461471557617 39.24446105957031 20.88825798034668 37.83692932128906 25.76787567138672 37.83692932128906 Z M 16.30476570129395 55.80869293212891 L 19.90583992004395 65.71186065673828 L 17.5535888671875 65.33163452148438 L 14.74892902374268 57.61843490600586 L 16.30476570129395 55.80869293212891 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1ynq6j =
    '<svg viewBox="4.0 0.0 26.7 32.2" ><path transform="translate(-66.68, 0.0)" d="M 97.08251953125 11.08065891265869 C 96.71857452392578 8.849740028381348 95.97016906738281 6.916570663452148 94.85812377929688 5.334714889526367 C 92.36970520019531 1.794856548309326 88.09108734130859 0 82.14126586914063 0 L 82.14054107666016 0 C 77.20127868652344 0 73.39522552490234 1.244750022888184 70.82826232910156 3.69967246055603 C 70.39447784423828 4.144346237182617 71.00310516357422 4.800514221191406 71.465087890625 4.387840747833252 C 73.85399627685547 2.103230953216553 77.44570159912109 0.9448633193969727 82.14120483398438 0.9448633193969727 C 87.77226257324219 0.9448633193969727 91.79583740234375 2.605808734893799 94.10008239746094 5.881553649902344 C 96.44044494628906 9.208597183227539 96.59022521972656 13.65572452545166 96.30376434326172 16.80057144165039 C 95.99033355712891 20.2409725189209 95.10055541992188 22.91725921630859 95.09158325195313 22.94391632080078 C 95.06642150878906 23.01885223388672 95.06011199951172 23.0990161895752 95.07334899902344 23.17697143554688 C 95.24414825439453 24.18439292907715 95.14185333251953 25.22053527832031 94.77735137939453 26.17339324951172 L 93.79114532470703 28.75128555297852 C 93.29644012451172 30.04437828063965 92.19821166992188 30.94680595397949 90.89256286621094 31.18281936645508 L 90.94093322753906 31.04802703857422 C 90.94118499755859 31.04733467102051 90.94142913818359 31.04664039611816 90.94167327880859 31.04594993591309 L 93.86197662353516 22.9058780670166 C 93.86209869384766 22.90544128417969 93.86228179931641 22.90506553649902 93.86238861083984 22.90462303161621 L 94.51711273193359 21.07971382141113 C 94.51993560791016 21.07185554504395 94.52253723144531 21.06393241882324 94.52494812011719 21.05588912963867 C 94.59706878662109 20.81591415405273 96.27321624755859 15.12026596069336 94.66101837158203 10.01942443847656 C 94.58246612548828 9.771027565002441 94.32025146484375 9.634285926818848 94.07637786865234 9.714132308959961 C 93.83198547363281 9.793974876403809 93.69758605957031 10.06003761291504 93.77606964111328 10.30843544006348 C 95.26580047607422 15.02156352996826 93.72010040283203 20.49031066894531 93.63919067382813 20.76895141601563 L 93.26231384277344 21.81949996948242 L 91.56539154052734 19.81886863708496 C 91.51220703125 19.75687980651855 91.44318389892578 19.70897483825684 91.36675262451172 19.68131446838379 L 89.54694366455078 19.00666236877441 C 88.96540832519531 18.7910213470459 88.33604431152344 18.8186206817627 87.77492523193359 19.08411598205566 C 87.21380615234375 19.34974098205566 86.78787994384766 19.82151031494141 86.57585906982422 20.41267204284668 L 83.78730010986328 28.18546104431152 C 83.57518005371094 28.77661514282227 83.60226440429688 29.4163818359375 83.86348724365234 29.98679542541504 C 84.12472534179688 30.55727005004883 84.58887481689453 30.99018859863281 85.17047119140625 31.20576858520508 L 86.99610137939453 31.88261985778809 C 87.07056427001953 31.90908432006836 87.15139770507813 31.91858100891113 87.22925567626953 31.90518951416016 L 89.79480743408203 31.48484230041504 L 89.76982879638672 31.554443359375 C 89.65436553955078 31.85018157958984 89.89363861083984 32.19765472412109 90.20646667480469 32.18872833251953 C 91.17285919189453 32.18872833251953 92.10524749755859 31.89556503295898 92.90287017822266 31.34087371826172 C 93.70049285888672 30.78624534606934 94.30726623535156 30.00910949707031 94.65756225585938 29.09348106384277 L 95.64376068115234 26.51558685302734 C 96.05508422851563 25.44020652770996 96.18050384521484 24.27391624450684 96.00839233398438 23.13485336303711 C 96.18687438964844 22.57518768310547 96.93650817871094 20.08675956726074 97.22816467285156 16.89978218078613 C 97.41989898681641 14.80585861206055 97.37087249755859 12.84791851043701 97.08251953125 11.08066368103027 Z M 84.70621490478516 29.58825874328613 C 84.54979705810547 29.24662971496582 84.53352355957031 28.86343955993652 84.66056060791016 28.50942230224609 L 87.44912719726563 20.73663330078125 C 87.576171875 20.38255500793457 87.83119964599609 20.10002136230469 88.16726684570313 19.94096374511719 C 88.50340270996094 19.78196144104004 88.88024139404297 19.76543045043945 89.22854614257813 19.89449691772461 L 90.61766815185547 20.40946197509766 L 86.87798309326172 30.83332443237305 L 85.48892211914063 30.31835746765137 C 85.14067077636719 30.18916702270508 84.86273956298828 29.92989158630371 84.70621490478516 29.5882568359375 Z M 87.86343383789063 30.84445571899414 L 91.37880706787109 21.04576110839844 L 92.89767456054688 22.83640480041504 L 90.15969848632813 30.46824073791504 L 87.86343383789063 30.84445571899414 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
