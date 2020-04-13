import 'package:flutter/material.dart';
//import 'package:access/shared/goal_grid.dart';


  
class Profile extends StatelessWidget {

  int _selectedIndex = 0;
static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
static const List<Widget> _widgetOptions = <Widget>[
  Text(
    'Index 0: Home',
    style: optionStyle,
  ),
  Text(
     'Index 1: Business',
     style: optionStyle,
  ),
  Text(
     'Index 2: School',
     style: optionStyle,
  ),
]; 

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
      title: const Text('Profile'),
    ),
    body: Center(
      child: _widgetOptions.elementAt(_selectedIndex),
    ),

  );
  }
}
  
  
