import 'package:access/login.dart';
import 'package:access/mainn.dart';
import 'package:access/screens/goal.dart';
import 'package:flutter/material.dart';
import 'navigation/navigate.dart';
import 'profile/profile_screen.dart';
import 'screens/splash_screen.dart';


void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,

        primaryColor: const Color(0xFF0D47A1),
        ),
        home: SplashScreen(),
        //home: MainScreen(),
        //home:Navigate(),
        //home: ProfileApp(),
        //home: GoalDash(),
        //home:LoginScreen(title: 'CHAT DEMO'), //chatapp

    );
  }
}

