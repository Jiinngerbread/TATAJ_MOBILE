import 'package:flutter/material.dart';



  
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
                onPressed: () {Navigator.of(context).pushNamed("/Goals");}
              ),
              new Text("Profile")
            ]
          )
        )
      )
    );
  }
}
  
  
