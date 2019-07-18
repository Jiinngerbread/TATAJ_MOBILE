import 'package:flutter/material.dart';
import 'package:access/screens/profile.dart' as second;
import 'package:access/screens/dashboard.dart' as first;
import 'package:access/screens/goals.dart' as third;


void main() {
  runApp(new MaterialApp(
    home: new Tabs(),
    routes: <String, WidgetBuilder> {
      // For home page its automatically defined as: 
      // "/":(BuildContext context) => new Dashboard(),
      "/Profile": (BuildContext context) => new Profile(),
      "/Goals": (BuildContext context) => new Goals()
    }   
  ));
}

class Tabs extends StatefulWidget {
  @override
  
  MyTabState createState() => new MyTabState();
}


class MyTabState extends State<Tabs> with SingleTickerProviderStateMixin {

  TabController controller;
    @override
    void initState() {
      super.initState();
      controller = new TabController(vsync: this, length: 3);
    }

    @override
    void dispose() {
      controller.dispose();
      super.dispose();
    }

    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        /*appBar: new AppBar(
          bottom: new TabBar (
            controller: controller,
            tabs: <Tab>[
              new Tab(icon: new Icon(Icons.home)),
              new Tab(icon: new Icon(Icons.portrait))
            ],
          )
        ),*/
        
        bottomNavigationBar: new Material(
          color: Colors.tealAccent,
          child: new TabBar(
            controller: controller,
            tabs: <Tab>[ 
              new Tab(icon: new Icon(Icons.home)),
              new Tab(icon: new Icon(Icons.favorite)),
              new Tab(icon: new Icon(Icons.portrait)),  
            ] 
          )
        ),
        
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new first.Dashboard(),
            new second.Profile(),
            new third.Goals()
          ]
        )
      );
    }
  }

    /*Widget build(BuildContext context) {
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
    } */
