import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MainMenuHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
      constraints: const BoxConstraints(maxHeight: 40.0),
      child: //new ListView(
       // padding: const EdgeInsets.only(left: 5.0),
        //child:
          _buildHeader("Manage"),
       // ],

    );
  }

  Widget _buildHeader(String title) {
    final textStyle = new TextStyle(
        color: Colors.black54, fontSize: 20.0, fontWeight: FontWeight.w900);

    return new InkWell(
      child: new Padding(
        padding: const EdgeInsets.only(
            left: 10.0, right: 10.0, bottom: 8.0, top: 8.0),
        child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Center(
                  child: new Text(
                    title,
                    style: textStyle,
                    textAlign: TextAlign.center,
                  )
              ),
              // new Expanded(child: new Container()),
            ]
        ),
      ),
    );
  }


}