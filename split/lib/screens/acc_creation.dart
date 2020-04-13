import 'package:access/navigation/navigate.dart';

import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

/// This is the main method of app, from here execution starts.


/// App widget class

class App extends StatelessWidget {
  //making list of pages needed to pass in IntroViewsFlutter constructor.
  final pages = [
    PageViewModel(
        pageColor: const Color(0xFF03A9F4),
        bubble: Image.asset('assets/air-hostess.png'),
        body: Text(
          'Slide to the left to begin account creation process',
        ),
        title: Text(
          'Account Set Up',textAlign: TextAlign.center,
        ),
        
        textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 30, color: Colors.white),
        mainImage: Image.asset(
          'assets/splitlogo.png',
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
      pageColor: Colors.orangeAccent[100],
      iconImageAssetPath: 'assets/contract.png',
      mainImage: SizedBox(height:20,
      child: Form(
                child: new Column(                 
                  children: <Widget>[
                    SizedBox(height: 60,),
                     new TextField(
                      autofocus: true,
                      cursorColor: Colors.white,
                      decoration: new InputDecoration(
                        
                        focusColor: Colors.blue,
                        fillColor: Colors.blue[200],
                        filled: true,
                        labelText: 'TRN',
                        hoverColor: Colors.blue),
                            ),
                     new TextField(
                      autofocus: true,
                      decoration: new InputDecoration(
                        fillColor: Colors.blue[200],
                        filled: true,
                        focusColor: Colors.blue,
                        labelText: 'Phone Number',
                        prefixText: '876-',
                        hoverColor: Colors.blue),
                            ),
                    new TextField(
                      autofocus: true,
                      decoration: new InputDecoration(
                        fillColor: Colors.blue[200],
                        filled: true,
                        focusColor: Colors.blue,
                        labelText: 'E-mail',
                        hoverColor: Colors.blue),
                        ),    
                  ]))), 
      body: 
      SizedBox(height:20),
       
      title: Container(child: Column(children:<Widget>[Text('SPLIT Account',textAlign: TextAlign.center,),Text('Setup',textAlign: TextAlign.center,)])),
     
      
textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 33, color: Colors.white),
    ),    
    PageViewModel(
      pageColor: Colors.blueAccent[200],
      iconImageAssetPath: 'assets/like.png',
      body: Form(
                child: new Column(                 
                  children: <Widget>[
                    SizedBox(height: 60,),
                     new TextField(
                      autofocus: true,
                      obscureText: true,
                      cursorColor: Colors.white,
                      decoration: new InputDecoration(
                        
                        focusColor: Colors.blue,
                        fillColor: Colors.blue[200],
                        filled: true,
                        labelText: ' PIN CODE',
                        hoverColor: Colors.blue),
                            ),
             
                        ])),
                        //SizedBox(),
      title: Container(child:Column(children:<Widget>[SizedBox(height:30),Text('Account Details')])),
      mainImage: Image.asset('assets/accountdetails.png',
      height: 285.0,
      width: 285.0),
      
      textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 40, color: Colors.white),
    ),
    

      
    PageViewModel(
      pageColor: Colors.orangeAccent[100],
      iconImageAssetPath: 'assets/like.png',
      body: Text(
        'Welcome Ana',
      ),
      title: Text('Congratulations'),
      mainImage: Image.asset(
        'assets/like.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 40, color: Colors.white),
    ),
    ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IntroViews Flutter', //title of app
      theme: ThemeData(
          primarySwatch: Colors.blue,

        primaryColor: Colors.orangeAccent[100],
        ),//ThemeData
      home: Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          onTapDoneButton: () {
            Navigator.push(
              context,
              MaterialPageRoute(
             builder: (context) => Navigate(),
              ), //MaterialPageRoute
            );
          },
          pageButtonTextStyles: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ), //IntroViewsFlutter
      ), //Builder
    ); //Material App
  }
}

/// Home Page of our example app.

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ), //Appbar
      body: Center(
        child: Text("This is the home page of the app"),
      ), //Center
    ); //Scaffold
  }
}
