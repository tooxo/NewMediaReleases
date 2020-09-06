import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Musikdetails extends StatelessWidget {
  Musikdetails({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(41.0, 59.0),
            child:
                // Adobe XD layer: 'Albumcover' (shape)
                Container(
              width: 294.0,
              height: 294.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(64.4, 362.0),
            child:
                // Adobe XD layer: 'Albumtitel + Release' (text)
                SizedBox(
              width: 247.0,
              child: Text(
                'The life of Pablo\nRelease Date: 3.10.2021',
                style: TextStyle(
                  fontFamily: 'Sitka Subheading',
                  fontSize: 20,
                  color: const Color(0xff888888),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(10.0, 432.0),
            child:
                // Adobe XD layer: 'Trackliste' (none)
                SingleChildScrollView(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 2,
                runSpacing: 10,
                children: [{}, {}, {}, {}, {}, {}, {}, {}, {}].map((map) {
                  return Transform.translate(
                    offset: Offset(1.0, 0.0),
                    child: SizedBox(
                      width: 355.0,
                      height: 27.0,
                      child: Stack(
                        children: <Widget>[
                          Transform.translate(
                            offset: Offset(-19.8, 0.0),
                            child:
                                // Adobe XD layer: 'Titel des Tracks' (text)
                                SizedBox(
                              width: 238.0,
                              child: Text(
                                'Father strech my hand',
                                style: TextStyle(
                                  fontFamily: 'Sitka Subheading',
                                  fontSize: 20,
                                  color: const Color(0xff888888),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(312.0, 0.0),
                            child:
                                // Adobe XD layer: 'Länge des Tracks' (text)
                                SizedBox(
                              width: 48.0,
                              child: Text(
                                '5:34',
                                style: TextStyle(
                                  fontFamily: 'Sitka Subheading',
                                  fontSize: 20,
                                  color: const Color(0xff888888),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(-12.4, 17.0),
                            child:
                                // Adobe XD layer: 'Künstler' (text)
                                SizedBox(
                              width: 149.0,
                              child: Text(
                                'Kanye West feat. deine mum',
                                style: TextStyle(
                                  fontFamily: 'Sitka Subheading',
                                  fontSize: 10,
                                  color: const Color(0xff888888),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(41.0, 59.0),
            child: Container(
              width: 294.0,
              height: 294.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(188.0),
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(13.0, 779.0),
            child:
                // Adobe XD layer: 'Links ' (group)
                SizedBox(
              width: 352.0,
              height: 12.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 2.0, 54.0, 10.0),
                    size: Size(352.0, 12.0),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Spotify Link',
                      style: TextStyle(
                        fontFamily: 'Sitka Subheading',
                        fontSize: 10,
                        color: const Color(0xff888888),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(100.0, 0.0, 54.0, 10.0),
                    size: Size(352.0, 12.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Apple Music',
                      style: TextStyle(
                        fontFamily: 'Sitka Subheading',
                        fontSize: 10,
                        color: const Color(0xff888888),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(300.0, 0.0, 52.0, 10.0),
                    size: Size(352.0, 12.0),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Soundcloud',
                      style: TextStyle(
                        fontFamily: 'Sitka Subheading',
                        fontSize: 10,
                        color: const Color(0xff888888),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(209.0, 0.0, 36.0, 10.0),
                    size: Size(352.0, 12.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Youtube',
                      style: TextStyle(
                        fontFamily: 'Sitka Subheading',
                        fontSize: 10,
                        color: const Color(0xff888888),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
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
                    bounds: Rect.fromLTWH(89.0, 0.0, 250.9, 30.0),
                    size: Size(339.9, 30.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Titlebar' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(225.0, 2.0, 25.9, 25.9),
                          size: Size(250.9, 30.0),
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
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 25.9, 25.9),
                                      size: Size(25.9, 25.9),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 25.9, 25.9),
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
                                            bounds: Rect.fromLTWH(
                                                6.5, 7.6, 13.0, 2.2),
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
                                            bounds: Rect.fromLTWH(
                                                6.5, 11.9, 13.0, 2.2),
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
                                            bounds: Rect.fromLTWH(
                                                6.5, 16.2, 13.0, 2.2),
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
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 152.0, 30.0),
                          size: Size(250.9, 30.0),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child:
                              // Adobe XD layer: 'Künstler' (text)
                              Text(
                            'Kanye West',
                            style: TextStyle(
                              fontFamily: 'Sitka Subheading',
                              fontSize: 30,
                              color: const Color(0xffffffff),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 7.0, 18.0, 15.4),
                    size: Size(339.9, 30.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'arrow' (group)
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
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(210.0, 762.8),
            child:
                // Adobe XD layer: 'Youtube Logo' (group)
                SizedBox(
              width: 58.0,
              height: 44.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(21.7, 12.1, 17.6, 18.7),
                    size: Size(58.2, 44.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_262x1a,
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
        ],
      ),
    );
  }
}

const String _svg_uh9zp9 =
    '<svg viewBox="0.0 0.0 25.9 25.9" ><path transform="translate(1.0, 1.0)" d="M 11.95836639404297 -1 C 4.801804542541504 -1 -1 4.801804542541504 -1 11.95836639404297 C -1 19.11492919921875 4.801804542541504 24.91673278808594 11.95836639404297 24.91673278808594 C 19.11492919921875 24.91673278808594 24.91673278808594 19.11492919921875 24.91673278808594 11.95836639404297 C 24.91673278808594 4.801804065704346 19.11492729187012 -1 11.95836639404297 -1 Z M 11.95836639404297 22.75698852539063 C 5.994582176208496 22.75698852539063 1.15974497795105 17.92215156555176 1.15974497795105 11.95836639404297 C 1.15974497795105 5.994584083557129 5.994582176208496 1.159744739532471 11.95836639404297 1.159744739532471 C 17.92215156555176 1.159744739532471 22.75698852539063 5.994582176208496 22.75698852539063 11.95836639404297 C 22.75698852539063 17.92215156555176 17.92215156555176 22.75698852539063 11.95836639404297 22.75698852539063 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8dl02a =
    '<svg viewBox="6.5 7.6 13.0 2.2" ><path transform="translate(-120.52, -140.77)" d="M 138.8785095214844 148.3329925537109 L 128.079833984375 148.3329925537109 C 127.4834518432617 148.3329925537109 126.9999923706055 148.8164520263672 126.9999923706055 149.412841796875 C 126.9999923706055 150.0092315673828 127.4834518432617 150.4926910400391 128.079833984375 150.4926910400391 L 138.8784637451172 150.4926910400391 C 139.474853515625 150.4926910400391 139.9583129882813 150.0092315673828 139.9583129882813 149.412841796875 C 139.9583587646484 148.8164978027344 139.4748992919922 148.3329925537109 138.8785095214844 148.3329925537109 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4h1f9 =
    '<svg viewBox="6.5 11.9 13.0 2.2" ><path transform="translate(-120.52, -221.79)" d="M 138.8785095214844 233.6670074462891 L 128.0798492431641 233.6670074462891 C 127.4834594726563 233.6670074462891 127 234.1504669189453 127 234.7468566894531 C 127 235.3432464599609 127.4834594726563 235.8267059326172 128.0798492431641 235.8267059326172 L 138.8784637451172 235.8267059326172 C 139.474853515625 235.8267059326172 139.9583129882813 235.3432464599609 139.9583129882813 234.7468566894531 C 139.9583129882813 234.1504669189453 139.4749145507813 233.6670074462891 138.8785095214844 233.6670074462891 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kdh1ts =
    '<svg viewBox="6.5 16.2 13.0 2.2" ><path transform="translate(-120.52, -302.8)" d="M 138.8785095214844 319 L 128.0798492431641 319 C 127.4834594726563 319 127 319.4834594726563 127 320.079833984375 C 127 320.6762390136719 127.4834594726563 321.1596984863281 128.0798492431641 321.1596984863281 L 138.8784637451172 321.1596984863281 C 139.474853515625 321.1596984863281 139.9583129882813 320.6762390136719 139.9583129882813 320.079833984375 C 139.9583587646484 319.4834594726563 139.4749145507813 319 138.8785095214844 319 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_l0su8j =
    '<svg viewBox="0.0 0.0 18.0 15.4" ><path transform="translate(0.0, -31.84)" d="M 16.91786575317383 38.29666900634766 C 16.84421539306641 38.28471374511719 16.76967811584473 38.27920150756836 16.69510078430176 38.28016662597656 L 3.996446132659912 38.28016662597656 L 4.273343086242676 38.1513786315918 C 4.544001579284668 38.02327346801758 4.790230751037598 37.84892272949219 5.001002311706543 37.6362190246582 L 8.562023162841797 34.07519912719727 C 9.031017303466797 33.62749481201172 9.109820365905762 32.90727996826172 8.748767852783203 32.36874008178711 C 8.328553199768066 31.79486465454102 7.52269458770752 31.67026138305664 6.948777675628662 32.09047698974609 C 6.902413845062256 32.12444305419922 6.858344078063965 32.16147232055664 6.816929817199707 32.20131683349609 L 0.3774690926074982 38.64077758789063 C -0.1257745325565338 39.14345550537109 -0.1262172609567642 39.95889282226563 0.3764631152153015 40.46213531494141 C 0.3767850995063782 40.46245956420898 0.3771473169326782 40.46282196044922 0.3774692714214325 40.46314239501953 L 6.816929817199707 46.90260314941406 C 7.320575714111328 47.40484237670898 8.136013031005859 47.40371704101563 8.638291358947754 46.90007019042969 C 8.677813529968262 46.86042785644531 8.714719772338867 46.8182487487793 8.748767852783203 46.7738151550293 C 9.109820365905762 46.23527526855469 9.031017303466797 45.51506042480469 8.562023162841797 45.06735992431641 L 5.007441520690918 41.49989700317383 C 4.818483352661133 41.31073760986328 4.601232051849365 41.15212631225586 4.363495349884033 41.02981567382813 L 3.977127552032471 40.85595321655273 L 16.62422752380371 40.85595321655273 C 17.28213882446289 40.8803825378418 17.85935592651367 40.42080688476563 17.98295402526855 39.77412414550781 C 18.09681129455566 39.072021484375 17.61996841430664 38.41056442260742 16.91786575317383 38.29666900634766 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_262x1a =
    '<svg viewBox="21.7 12.1 17.6 18.7" ><path transform="translate(-169.24, -94.41)" d="M 207.2989044189453 113.8513870239258 L 194.4413299560547 106.8162841796875 C 193.7020416259766 106.4117813110352 192.8282012939453 106.4268798828125 192.1035614013672 106.8562469482422 C 191.3784790039063 107.2860565185547 190.9459838867188 108.0453338623047 190.9459838867188 108.8880996704102 L 190.9459838867188 122.8375701904297 C 190.9459838867188 123.6763305664063 191.3757934570313 124.4342803955078 192.0960083007813 124.8645324707031 C 192.4720916748047 125.0892105102539 192.8890380859375 125.2019805908203 193.3068695068359 125.2019805908203 C 193.6896057128906 125.2019805908203 194.0732421875 125.1074142456055 194.4262390136719 124.917366027832 L 207.2842559814453 118.0034790039063 C 208.0475311279297 117.5927581787109 208.5239715576172 116.7992858886719 208.5275115966797 115.9321060180664 C 208.5306243896484 115.0649337768555 208.0599670410156 114.2679061889648 207.2989044189453 113.8514175415039 Z M 194.3565368652344 121.082763671875 L 194.3565368652344 110.6570739746094 L 203.9660949707031 115.9152069091797 L 194.3565368652344 121.082763671875 Z M 194.3565368652344 121.082763671875" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_f7lnl8 =
    '<svg viewBox="0.0 0.0 58.2 44.1" ><path  d="M 57.77022552490234 10.40383625030518 L 57.76756286621094 10.37719440460205 C 57.71827697753906 9.908749580383301 57.22762680053711 5.742038249969482 55.20199203491211 3.622706413269043 C 52.86064910888672 1.129956960678101 50.20628356933594 0.8271288275718689 48.92971420288086 0.681938111782074 C 48.82403564453125 0.669949471950531 48.72723388671875 0.6588488817214966 48.64065170288086 0.6473042368888855 L 48.53897094726563 0.636647641658783 C 40.84492874145508 0.07717858254909515 29.22529983520508 0.0008059877436608076 29.10890007019043 0.0003615306923165917 L 29.09868431091309 -8.249282836914063e-05 L 29.08847427368164 0.0003615306923165917 C 28.97213745117188 0.0008055540965870023 17.35250282287598 0.07717768847942352 9.589179039001465 0.636647641658783 L 9.48660945892334 0.6473042368888855 C 9.404022216796875 0.6584048867225647 9.312996864318848 0.6686173677444458 9.21397876739502 0.6801620125770569 C 7.952061176300049 0.8258016705513 5.326112747192383 1.129069805145264 2.978110074996948 3.711957216262817 C 1.048823118209839 5.808634281158447 0.4911352097988129 9.886102676391602 0.4338570535182953 10.34434032440186 L 0.4271967113018036 10.40384006500244 C 0.409879744052887 10.59876537322998 -0.0008425712585449219 15.23926162719727 -0.0008425712585449219 19.89794540405273 L -0.0008425712585449219 24.25292778015137 C -0.0008425712585449219 28.9116268157959 0.4098790287971497 33.5521125793457 0.4271967113018036 33.74747848510742 L 0.4303048849105835 33.77678298950195 C 0.4795913398265839 34.23767852783203 0.969792902469635 38.32802963256836 2.986107110977173 40.44823455810547 C 5.187576770782471 42.85750579833984 7.971163272857666 43.17631912231445 9.468400955200195 43.34770965576172 C 9.705065727233887 43.37479400634766 9.908872604370117 43.39788436889648 10.0478515625 43.42230606079102 L 10.1823902130127 43.44095611572266 C 14.62484359741211 43.86366271972656 28.55339813232422 44.0719108581543 29.1440258026123 44.08034896850586 L 29.16178703308105 44.08079147338867 L 29.17954444885254 44.08034896850586 C 29.2958812713623 44.07990646362305 40.91506576538086 44.00353240966797 48.60916137695313 43.44406509399414 L 48.71084213256836 43.43340682983398 C 48.80808258056641 43.42052841186523 48.91731262207031 43.40898513793945 49.03719711303711 43.39655303955078 C 50.29201126098633 43.26334762573242 52.90375518798828 42.98672103881836 55.21933746337891 40.43891906738281 C 57.14862823486328 38.34179306030273 57.70676040649414 34.26432418823242 57.76359558105469 33.80653381347656 L 57.77025604248047 33.74703216552734 C 57.78757095336914 33.55166244506836 58.19873046875 28.91161155700684 58.19873046875 24.25292587280273 L 58.19873046875 19.89794158935547 C 58.19829177856445 15.23924446105957 57.78757095336914 10.59919929504395 57.77025604248047 10.40383529663086 Z M 54.78771209716797 24.25293731689453 C 54.78771209716797 28.56485176086426 54.41118240356445 33.00552749633789 54.37565994262695 33.41313934326172 C 54.23091125488281 34.53607177734375 53.64257431030273 37.11584854125977 52.70257186889648 38.13755035400391 C 51.25327682495117 39.73203277587891 49.76446151733398 39.89011001586914 48.67749404907227 40.00511169433594 C 48.54606246948242 40.01887893676758 48.42440032958984 40.03219985961914 48.31428146362305 40.04595947265625 C 40.87244033813477 40.5841178894043 29.69149780273438 40.66670608520508 29.17645835876465 40.6698112487793 C 28.59877967834473 40.661376953125 14.8740406036377 40.45135498046875 10.56697082519531 40.05128860473633 C 10.34629154205322 40.01532363891602 10.10785102844238 39.98779678344727 9.856533050537109 39.95937728881836 C 8.581747055053711 39.81329345703125 6.836731433868408 39.61348342895508 5.494889736175537 38.13755416870117 L 5.463364124298096 38.10380554199219 C 4.539795398712158 37.14160919189453 3.968342065811157 34.72922515869141 3.823139667510986 33.42646408081055 C 3.796054601669312 33.11831283569336 3.409753799438477 28.62523651123047 3.409753799438477 24.2529411315918 L 3.409753799438477 19.89795875549316 C 3.409753799438477 15.59093475341797 3.785397529602051 11.15513134002686 3.821807384490967 10.73908805847168 C 3.994532346725464 9.416342735290527 4.593964099884033 6.992864608764648 5.494893550872803 6.01334810256958 C 6.988585948944092 4.370464324951172 8.563540458679199 4.188409805297852 9.605223655700684 4.068078994750977 C 9.704685211181641 4.056534290313721 9.797486305236816 4.045877933502197 9.883182525634766 4.034777164459229 C 17.4333610534668 3.493956804275513 28.69466018676758 3.413588523864746 29.0987548828125 3.41048002243042 C 29.50281715393066 3.413143873214722 40.76015853881836 3.493956089019775 48.24328231811523 4.034777164459229 C 48.33519744873047 4.046321868896484 48.435546875 4.057866096496582 48.5434455871582 4.070298671722412 C 49.61487579345703 4.192405700683594 51.23423004150391 4.377119064331055 52.72037887573242 5.962279319763184 L 52.7341423034668 5.976932525634766 C 53.65771102905273 6.939130306243896 54.22916793823242 9.393693923950195 54.37436294555664 10.72265625 C 54.40011978149414 11.01349067687988 54.78775787353516 15.51633739471436 54.78775787353516 19.89796257019043 L 54.78771209716797 24.25293731689453 Z M 54.78771209716797 24.25293731689453" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
