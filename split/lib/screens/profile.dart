import 'package:flutter/material.dart';
import 'package:access/shared/goal_grid.dart';


  
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Profile"), backgroundColor: Colors.deepOrange),
      body: new Container(
        child: new Center(
          //child: GoalGrid(),
        )
      )
    );
  }
}
  
  
