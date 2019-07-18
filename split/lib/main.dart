import 'package:access/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'screens/profile.dart';
import 'screens/goals.dart';

void main() {
  runApp(new MaterialApp(
    home: new SplashScreen(),
    debugShowCheckedModeBanner : false,
    routes: <String, WidgetBuilder> {
      // For home page its automatically defined as: 
      // "/":(BuildContext context) => new Dashboard(),
      "/Profile": (BuildContext context) => new Profile(),
      "/Goals": (BuildContext context) => new Goals()
    }    
  ));
 
 /* runApp(Tabs());
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
  } */
}