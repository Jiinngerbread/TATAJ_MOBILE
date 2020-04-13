import 'package:access/login.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'profile_fonts.dart';

/// QuickActions represents the horizontal list of rectangular buttons below the header
class QuickActions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final blueGradient = const LinearGradient(
        colors: const <Color>[
          const Color(0xFF0075D1),
          const Color(0xFF00A2E3),
        ],
        stops: const <double>[0.4, 0.6],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft);
    final purpleGradient = const LinearGradient(
        colors: const <Color>[
          const Color(0xFF882DEB),
          const Color(0xFF9A4DFF)
        ],
        stops: const <double>[0.5, 0.7],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight);

    final yellowGradient = const LinearGradient(
        colors: const <Color>[
          const Color(0xFF0D47A1),
          Colors.yellowAccent
        ],
        stops: const <double>[0.5, 0.7],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight);

    final redGradient = const LinearGradient(
        colors: const <Color>[
          const Color(0xFFBA110E),
          const Color(0xFFCF3110),
        ],
        stops: const <double>[0.6, 0.8],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft);

    return new Container(
      constraints: const BoxConstraints(maxHeight: 120.0),
      margin: const EdgeInsets.only(top: 20.0),
      child: new Align(
        alignment: Alignment.center,
        child: new ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.only(
                left: 10.0, bottom: 20.0, right: 10.0, top: 10.0),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _buildAction_Second(
                  " ", () {},  new AssetImage('assets/images/midas_card.png')),
              _buildAction_Second(
                  " ", () {}, new AssetImage('assets/images/split_card_orange.jpeg')),

              _buildAction(
                  "SOCIAL", () {
                    LoginScreen(title:'Chat');
                    //onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(title: 'CHAT')));
                  }, Colors.red, yellowGradient,
                  new AssetImage("assets/images/feedback_black_outline.png")
                  ),

            ]
        ),
      ),
    );
  }

  Widget _buildAction(String title, VoidCallback action, Color color,
      Gradient gradient, ImageProvider backgroundImage) {
    final textStyle = new TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 18.0,
        fontFamily: ProfileFontNames.TimeBurner);

    return new GestureDetector(
      onTap: action,
      child: new Container(
        margin: const EdgeInsets.only(right: 5.0, left: 5.0),
        width: 150.0,
        decoration: new BoxDecoration(
            color: color,
            shape: BoxShape.rectangle,
            borderRadius: new BorderRadius.circular(10.0),
            boxShadow: <BoxShadow>[
              new BoxShadow(color: Colors.black38,
                  blurRadius: 2.0,
                  spreadRadius: 1.0,
                  offset: new Offset(0.0, 1.0)),
            ],
            gradient: gradient
        ),
        child: new Stack(
          children: <Widget>[
            new Opacity(
              opacity: 0.2,
              child: new Align(
                alignment: Alignment.centerRight,
                child: new Transform.rotate(
                  angle: -math.pi / 4.8,
                  alignment: Alignment.centerRight,
                  child: new ClipPath(
                    clipper: new _BackgroundImageClipper(),
                    child: new Container(
                      padding: const EdgeInsets.only(
                          bottom: 20.0, right: 0.0, left: 60.0),
                      child: new Image(
                        width: 90.0,
                        height: 90.0,
                        image: backgroundImage != null
                            ? backgroundImage
                            : new AssetImage("assets/images/microphone.png"),
                      ),
                    ),
                  ),
                ),
              ),
            ), // END BACKGROUND IMAGE

            new Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 10.0, top: 10.0),
              child: new Text(title, style: textStyle),
            ),
          ],
        ),
      ),
    );
  }
}

class _BackgroundImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = new Path();
    path.moveTo(0.0, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;

}

// TESTING TESTING ONE TWO

Widget _buildAction_Second(String title, VoidCallback action, ImageProvider backgroundImage) {
  final textStyle = new TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 18.0,
      fontFamily: ProfileFontNames.TimeBurner);

  return new GestureDetector(
    onTap: action,
    child: new Container(
      margin: const EdgeInsets.only(right: 5.0, left: 5.0),
      width: 150.0,
      decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(10.0),
          boxShadow: <BoxShadow>[
             new BoxShadow(color: Colors.black38,

                blurRadius: 2.0,
                spreadRadius: 1.0,
                offset: new Offset(0.0, 1.0)),
          ],
        image: DecorationImage(fit: BoxFit.fill,
          image: backgroundImage != null
              ? backgroundImage
              : new AssetImage("assets/images/microphone.png"),)
      ),

        child: new Stack(
          children: <Widget>[
            new Container(
              alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 10.0, top: 10.0),
              child: new Text(title, style: textStyle),
          ),
        ],
      ),
    ),
  );
}