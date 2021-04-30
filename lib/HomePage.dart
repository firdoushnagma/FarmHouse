import 'package:adobe_xd/adobe_xd.dart';
import 'package:app17/screens/screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(children: <Widget>[
      Stack(
        children: [
          Container(
            width: 414.0,
            height: 275.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/farm.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: Image.asset('assets/write.png'),
            height: 20,
          )
        ],
      ),
      SizedBox(
        width: 382.0,
        height: 60.0,
        child: Stack(
          children: <Widget>[
            Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 0.0, 382.0, 60.0),
              size: Size(382.0, 60.0),
              pinLeft: true,
              pinRight: true,
              pinTop: true,
              pinBottom: true,
              child:
                  // Adobe XD layer: 'Search' (group)
                  Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 382.0, 60.0),
                    size: Size(382.0, 60.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0xfff6f7f7),
                        border: Border.all(
                            width: 2.0, color: const Color(0xffffffff)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x3c638e6a),
                            offset: Offset(0, 12),
                            blurRadius: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(14.0, 19.0, 317.0, 23.0),
                    size: Size(382.0, 60.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Text(
                      'What’s your plan, Mike?',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        color: const Color(0x80191717),
                        letterSpacing: -0.16,
                        height: 1.625,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(346.0, 20.0, 20.0, 20.0),
                    size: Size(382.0, 60.0),
                    child:
                        // Adobe XD layer: 'Icon feather-search' (group)
                        Stack(
                      children: <Widget>[
                        SvgPicture.string(
                          '<svg viewBox="4.5 4.5 20.0 20.0" ><path transform="translate(0.0, 0.0)" d="M 22.46342468261719 13.48171424865723 C 22.46342468261719 18.44217681884766 18.44217491149902 22.46342468261719 13.48171424865723 22.46342468261719 C 8.521251678466797 22.46342468261719 4.500001907348633 18.44217681884766 4.5 13.48171520233154 C 4.5 8.521251678466797 8.521252632141113 4.500000953674316 13.48171520233154 4.500002384185791 C 18.44217681884766 4.500002384185791 22.46342658996582 8.52125358581543 22.46342468261719 13.48171710968018 Z" fill="none" fill-opacity="0.8" stroke="#191717" stroke-width="2" stroke-opacity="0.8" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(-5.12, -5.12)" d="M 29.61633491516113 29.61633491516113 L 24.97499847412109 24.97499847412109" fill="none" fill-opacity="0.8" stroke="#191717" stroke-width="2" stroke-opacity="0.8" stroke-linecap="round" stroke-linejoin="round" /></svg>',
                          allowDrawingOutsideViewBox: true,
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
      SizedBox(height: 30),
      Container(
        child: Text(
          'Most recommended',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: const Color(0xff191717),
            fontWeight: FontWeight.w600,
            height: 1.8,
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.left,
        ),
      ),
      SizedBox(height: 20),
      Container(
          height: 20,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (BuildContext context, int index) {
              Destination destination = destinations[index];
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Stack(children: <Widget>[
                    Hero(
                      tag: destination.imageUrl,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          height: 180.0,
                          width: 180.0,
                          image: AssetImage(destination.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ]));
              return CircularProgressIndicator();
            },
          )),
      SizedBox(height: 30),
      Container(
        child: Text(
          'Most visited',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: const Color(0xff191717),
            fontWeight: FontWeight.w600,
            height: 1.8,
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.left,
        ),
      ),
      SizedBox(height: 40),
      Text(
        'Browse by category',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20,
          color: const Color(0xff191717),
          fontWeight: FontWeight.w600,
          height: 1.8,
        ),
        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
        textAlign: TextAlign.left,
      ),
    ])));
  }
}
