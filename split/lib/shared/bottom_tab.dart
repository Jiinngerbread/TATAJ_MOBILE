import 'package:flutter/material.dart';
//import 'package:access/screens/profile.dart' as second;
import 'package:access/profile/profile_screen.dart' as second;
//import 'package:access/screens/profile.dart';
//import 'package:access/screens/dashboard.dart' as first;
import 'package:access/screens/resource_center.dart' as third;
//import 'package:access/screens/dashboard.dart';
import 'package:access/screens/goal.dart' as first;




/*
void main() {
  runApp(new MaterialApp(
    home: new Tabs(),
    routes: <String, WidgetBuilder> {
      // For home page its automatically defined as: 
      // "/":(BuildContext context) => new Dashboard(),
      //"/Profile": (BuildContext context) => new Profile(),
      //"/Goals": (BuildContext context) => new Goals()
    }   
  ));
}
*/

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
        
        bottomNavigationBar: new Material(
          color: Color(0xFF0D47A1),
          //color: Colors.tealAccent,
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
            //new first.Dashboard(),
            new first.GoalDash(),
            new second.ProfileApp(),
            new third.Resource_center(),
          ]
        )
      );
    }
  }

