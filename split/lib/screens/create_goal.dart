import 'package:flutter/material.dart';
import 'package:access/screens/goalscreen.dart';
import 'package:access/classes/Goals.dart';

List images = ['assets/group-of-people-doing-yoga-hd.jpg','assets/paradise.jpg','assets/macbook.jpg','assets/graduation.jpg','assets/anything.jpg'];
class CreateGoal extends StatelessWidget{
 
  @override 
  
  Widget build(BuildContext context){
     
    return new Scaffold(
      appBar: AppBar(title: Text("Create Your Goal"),backgroundColor: Colors.lightBlue,),
      body: new Container(
        child: GridView.count(
          mainAxisSpacing: 0,
          crossAxisCount: 1,
          padding: EdgeInsets.all(20.0),        
          children: <Widget>[           
                      
                      Center(
                        child: Card(
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),                       
                        
                            child: GestureDetector(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => GoalScreen(Goals('','','','','','','','','','','','')),fullscreenDialog: true)),
                              child: Hero(tag: images[0] ,
                              child: Container(
                              width: 550,
                              height: 200,
                              padding: EdgeInsets.all(20.0),
                              decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill,image: AssetImage('assets/group-of-people-doing-yoga-hd.jpg',) )),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children:<Widget>[Text('Do Something',style:TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 25,color: Colors.white),textAlign: TextAlign.left,),
                                  ]),
                                ]
                              ),
                            ),
                          )
                         )
                      ))),
                      Center(
                        child: Card(
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),                
                            
                            

                            child: Container(
                               child: GestureDetector(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => GoalScreen(Goals('','','','','','','','','','', '','')),fullscreenDialog: true)),
                              child: Hero(tag: images[1] ,
                              child: Container(
                              width: 550,
                              height: 200,
                              padding: EdgeInsets.all(20.0),
                              decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill,image: AssetImage('assets/paradise.jpg',) )),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children:<Widget>[Text('Go Somewhere',style:TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 25,color: Colors.white),textAlign: TextAlign.left,),
                                  ]),
                                ]
                              ),
                            ),
                          )
                         )
                      )))),
                      Center(
                        child: Card(
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                             child: GestureDetector(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => GoalScreen(Goals('','','','','','','','','','','','')),fullscreenDialog: true)),
                              child: Hero(tag: images[2] ,
                              child: Container(                            
                              width: 550,
                              height: 200,
                              padding: EdgeInsets.all(20.0),
                              decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill,image: AssetImage('assets/macbook.jpg',) )),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children:<Widget>[Text('Get Something',style:TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 25,color: Colors.white),textAlign: TextAlign.left,),
                                  ]),
                                ]
                              ),
                            ),
                          )
                         )
                      ))),
                                                                  Center(
                        child: Card(
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                             child: GestureDetector(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => GoalScreen(Goals('','','','','','','','','','','','' )),fullscreenDialog: true)),
                              child: Hero(tag: images[3] ,
                              child: Container(        
                              width: 550,
                              height: 200,
                              padding: EdgeInsets.all(20.0),
                              decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill,image: AssetImage('assets/graduation.jpg',) )),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children:<Widget>[Text('Pay off Debts',style:TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 25,color: Colors.white),textAlign: TextAlign.left,),
                                  ]),
                                ]
                              ),
                            ),
                          )
                         )
                      ))),
                    Center(
                        child: Card(
                          child: InkWell(
                            child: GestureDetector(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => GoalScreen(Goals('','','','','','','','','','', '' ,''  )),fullscreenDialog: true)),
                              child: Hero(tag: images[4] ,
                              child: Container(   
                              width: 550,
                              height: 200,
                              padding: EdgeInsets.all(20.0),
                              decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill,image: AssetImage('assets/anything.jpg',) )),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children:<Widget>[Text('Save for anything',style:TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 25,color: Colors.white),textAlign: TextAlign.left,),
                                  ]),
                                ]
                              ),
                            ),
                          )
                         )))
                      )])
                  )
                );
          }   
      
    
  }

  