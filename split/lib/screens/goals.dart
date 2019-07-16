import 'package:flutter/material.dart';

class Goals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Goals"), backgroundColor: Colors.amberAccent),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.favorite , color: Colors.redAccent),
                iconSize: 70.0,
                onPressed: null
              ),
              new Text("Goals")
            ]
          )
        )
      )
    );
  }
}