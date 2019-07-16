import 'package:flutter/material.dart';

  class GoalSingle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Single Goals"), backgroundColor: Colors.deepOrange),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.home, color: Colors.blue),
                iconSize: 70.0,
                onPressed: () {Navigator.of(context).pushNamed("/Profile");}
              ),
              new Text("Single Goals")
            ]
          )
        )
      )
    );
  }
}

  
  
