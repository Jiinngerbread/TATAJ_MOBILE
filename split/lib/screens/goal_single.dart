import 'package:flutter/material.dart';
import 'package:access/shared/goal_grid.dart';
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
              GoalGrid()
            ]
          )
        )
      )
    );
  }
}

  
  
