//import 'package:access/shared/bottom_tab.dart';
import 'package:flutter/material.dart';

  class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Dashboard"), backgroundColor: Colors.deepPurpleAccent),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.home, color: const Color(0xFF0D47A1)),
                iconSize: 70.0,
                onPressed: () {Navigator.of(context).pushNamed("/Goals");}
              ),
              new Text("Dash"),
            ]
          )
        )
        
      ),
    );
  }
}

  
  



