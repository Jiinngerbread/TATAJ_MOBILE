
import 'dart:async';
import 'package:access/login.dart';
import 'package:access/navigationbar/navgclass.dart';
import 'package:access/screens/choice.dart';
import 'package:access/screens/goalscreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:access/classes/Goals.dart';
import 'package:access/firestoreservice.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:access/screens/goalscreen.dart';
import 'package:access/screens/create_goal.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';







class GoalDash extends StatefulWidget {
    const GoalDash({Key key, this.user}): super(key:key);
    final FirebaseUser user;
    @override
    _GoalState createState() => _GoalState();
}

class _GoalState extends State<GoalDash>{
  List<Goals> items;
  FirestoreService fireServ = new FirestoreService();
  StreamSubscription<QuerySnapshot> todoGoals;

  @override
  void initState() {
    super.initState();

    items=new List();

    todoGoals?.cancel();
    todoGoals=fireServ.getGoalList().listen((QuerySnapshot snapshot){
        final List<Goals> goals=snapshot.documents
        .map((documentSnapshot) => Goals.fromMap(documentSnapshot.data))
        .toList();

        setState(() {
        this.items = goals;
      });
      
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Goals",textAlign: TextAlign.center,),
        actions: [
              PopupMenuButton<Choice>(
                onSelected: (choice) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          LoginScreen(title: 'Chattingz')));
                },
                itemBuilder: (BuildContext context) {
                  return choices.map((Choice choice) {
                    return PopupMenuItem<Choice>(
                      value: choice,
                      child: Text(choice.title),
                    );
                  }).toList();
                },
              ),
            ],
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true, 
      resizeToAvoidBottomPadding: false,
      
      body: Column(
        children: <Widget>[
          //_myAppBar(context),
          //rNavigationBar(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 200,
            child: ListView.builder(
      
                itemCount: items.length,
                itemBuilder: (context, index) {
                   var percenttt = double.parse(items[index].startDate);
                   //items[index].startDate;
                  return Stack(children: <Widget>[
                    // The containers in the background
                    Column(children: <Widget>[
                      
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Container(
                          
                          width: MediaQuery.of(context).size.width,
                          height: 120.0,
                          child: Padding(
                            padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                            child: Material(
                              color: Colors.white,
                              
                              elevation: 14.0,
                              shadowColor: Color(0x802196F3),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Row(
                                    //mainAxisAlignment:
                                        //MainAxisAlignment.spaceBetween,
                                    
                                    children: <Widget>[
                                      Padding(
                                        child: todoType('${items[index].goalType}'),
                                        padding:const EdgeInsets.only(right: 15.0),
                                      ),
                                      
                                      Text(
                                        '${items[index].goalName}',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold
                                            
                                            ),
                                      ),
                                      Container(
                                        //color: Colors.orange,
                                        height: 50.0,
                                        width: 30.0,
                  
                                      ),
                                      Column(
                                        
                                        //crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                             
                                        children: <Widget>[
                                          Padding(
                                        padding:const EdgeInsets.only(right: 10.0),
                                        ),
                                          Text(
                                            '\$${items[index].goalAim}',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          /*Text(
                                            '${items[index].startDate}',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.0),
                                          ),*/

                                          LinearPercentIndicator(
                                                width: 120.0,
                                                lineHeight: 9.0,
                                                percent: percenttt,
                                                progressColor: Colors.orange,
                                                
                                           ),
                                          Text(
                                            '${items[index].endDate}',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.0),
                                          ),
                                        ],
                                      )
                                      
                                    ],
                                    
                                  ),
                                  
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ]);
                },
                
                ),
          ),
              
        ],
        
      ),
      //bottomNavigationBar:NavigationBar(),
      //bottomNavigationBar: Tabs(),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFFA7397),
        child: Icon(
          FontAwesomeIcons.plus,
          color: Color(0xFFFDDE42),
        ),
        onPressed: () {
        ///Navigator.push(context,MaterialPageRoute(builder: (context) => TaskScreen()),
          Navigator.push(
            context,
            MaterialPageRoute(
                //builder: (context) => GoalScreen(),
                builder: (context) => GoalScreen(Goals('','','','','','','','','','', '','')),
                //fullscreenDialog: true),
          ));
        },
        
      ),
      
    );
   
    
  }


  Widget todoType(String icontype) {
    IconData iconval;
    Color colorval;
    switch (icontype) {
       case 'travel':
        iconval = FontAwesomeIcons.plane;
        colorval = Color(0xff4158ba);
        break;
      case 'gift':
        iconval = FontAwesomeIcons.gifts;
        colorval = Color(0xfffb537f);
        break;
      case 'emergency':
        iconval = Icons.local_hospital;
        colorval = Colors.red;
      break;
      case 'group':
        iconval = FontAwesomeIcons.users;
        colorval = Color(0xFFFFD740);
        break;
      case 'other':
         iconval = FontAwesomeIcons.tasks;
         colorval = Color(0xff0dc8f5);
      
    }
    return CircleAvatar(
      backgroundColor: colorval,
      child: Icon(iconval, color: Colors.white, size: 20.0),
    );
  }

  
}
