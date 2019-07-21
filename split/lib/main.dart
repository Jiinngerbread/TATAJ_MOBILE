import 'package:flutter/material.dart';
import 'screens/profile.dart';
import 'screens/goals.dart';
import 'screens/splash_screen.dart';
import 'screens/create_goal.dart';

//import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new CreateGoal(),
    
    
  /*   routes: <String, WidgetBuilder> {
      // For home page its automatically defined as: 
      // "/":(BuildContext context) => new Dashboard(),
      "/Profile": (BuildContext context) => new Profile(),
      "/Goals": (BuildContext context) => new Goals()
    }     */
  ));
 
 /*runApp(Tabs());
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
                Tab(icon: Icon(Icons.favorite)),
                Tab(icon: Icon(Icons.portrait)),
                
              ],
            ),
            title: Text('SPLIT'),
          ),
          
          body: TabBarView(
            children: [
              Dashboard(),
              Goals(),
              Profile(),
            ],
          ),

        ),
      ),
    );
  } */
}