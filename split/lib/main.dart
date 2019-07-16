import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HomePage()
  ));
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Dashboard"), backgroundColor: Colors.deepOrange),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.favorite, color: Colors.redAccent),
                iconSize: 70.0,
                onPressed: null
              ),
              new Text("Dash")
            ]
          )
        )
      )
    );
  


  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Profile"), backgroundColor: Colors.deepOrange),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.portrait , color: Colors.blueGrey),
                iconSize: 70.0,
                onPressed: null
              ),
              new Text("Profile")
            ]
          )
        )
      )
    );
  }
}