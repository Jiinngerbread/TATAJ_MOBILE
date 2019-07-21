import 'package:flutter/material.dart';
import 'package:access/shared/goal_grid.dart';
import 'package:access/screens/create_goal.dart';

class Goals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title:  Text("Goals"), backgroundColor: Colors.amberAccent),
      body:  Container(
        child:  Center(
          child:  GoalGrid()
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
             builder: (context) => CreateGoal()
            )
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
    );
  }
}