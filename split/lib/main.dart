import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Dashboard(),
    routes: <String, WidgetBuilder> {
      // For home page its automatically defined as: 
      // "/":(BuildContext context) => new Dashboard(),
      "/Profile": (BuildContext context) => new Profile(),
      "/Goals": (BuildContext context) => new Goals()
    }
    
  ));
  runApp(Tabs());
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
                icon: new Icon(Icons.home, color: Colors.blue),
                iconSize: 70.0,
                onPressed: () {Navigator.of(context).pushNamed("/Profile");}
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

 class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.portrait)),
                Tab(icon: Icon(Icons.favorite)),
              ],
            ),
            title: Text('SPLIT'),
          ),
          
          /*body: TabBarView(
            children: [
              Icon(Icons.home),
              Icon(Icons.portrait),
              Icon(Icons.favorite),
            ],
          ),*/

        ),
      ),
    );
  }
}