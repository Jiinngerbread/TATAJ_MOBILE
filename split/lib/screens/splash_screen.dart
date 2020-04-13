import 'package:access/screens/goal.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dashboard.dart';
import 'login_page.dart';
class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        //primaryColor: const Color(0xFFe91e63),
        primaryColor: const Color(0xFF0D47A1),
        accentColor: const Color(0xFF6c5656),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  Screen({Key key}) : super(key: key);
  @override
  SplashingScreen createState() => new SplashingScreen();
}

class SplashingScreen extends State<Screen> {
  @override
  void initState() {
    
    super.initState();
    Timer(Duration(seconds: 3), () =>  Navigator.push(context, MaterialPageRoute(
                              builder: (context) => LoginPage())));
  }
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        body: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color:Colors.lightBlue[50]),
              child: Column(              
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          child: Center(
                            child: Image.asset('assets/splitlogo.png', 
                            width: 180.0, height: 120.0),
                              ),
                        ),
                      ),
                      
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                           CircularProgressIndicator(),
                           Padding(
                              padding: EdgeInsets.only(top: 20.0),
                            ),
                           Text(
                            'Save Smart',
                             softWrap: true,
                             textAlign: TextAlign.center,
                             style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 18.0,
                             color: Colors.blue
                      )
                           )],
                ),
                ),  
            ]  
          )
         )
      ]
    )
  ); 
                               
      
    }
  
  
}