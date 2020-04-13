import 'package:access/profile/profile_screen.dart';
import 'package:access/resource_center/resource_shelf.dart';
import 'package:access/screens/goal.dart';
import 'package:flutter/material.dart';

class Navigate extends StatefulWidget{
@override 
State<StatefulWidget> createState(){
  return NavigateState();
}
}

class NavigateState extends State<Navigate>{
  int _selectedPage = 1;
  final _pageOptions = [
    ResourceShelf(),
    GoalDash(),
    ProfileApp(),
  ];
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Demo",
      theme: ThemeData(
          primarySwatch: Colors.blue,

        primaryColor: const Color(0xFF0D47A1),
        ),
      home: Scaffold(
        //appBar: AppBar (title: Text('nav')),
        body:_pageOptions[_selectedPage],
        bottomNavigationBar:BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap:(int index){
           setState(() {
            _selectedPage = index; 
           }); 
          },
          items:[
            BottomNavigationBarItem(
              icon: Icon(Icons.folder),
              title: Text('Resource Centre')
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.check_circle),
              title: Text('Goals')
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.portrait),
              title: Text('Profile')
              ),
          ],
        ) ,
      ),
    );
  }
}