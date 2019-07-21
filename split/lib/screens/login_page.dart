import 'package:access/shared/bottom_tab.dart';
//import 'package:access/screens/dashboard.dart';
import 'package:flutter/material.dart';

//import 'package:flutter/services.dart';

import 'registration.dart';




class LoginPage extends StatelessWidget{
  @override
  
  Widget build(BuildContext context){
    
    return new Scaffold(      
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        backgroundColor: Colors.lightBlue[50],
        elevation: 0.0,),
        body: Container(
          decoration: BoxDecoration(color: Colors.lightBlue[50]),
          width: double.infinity,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Image.asset('assets/splitlogo.png',width:180.0,height:120.0),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,bottom: 80.0),
                  child: new Text("Save Smart",
                    style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.w300),
                  ),
                  )
                ],
              ),
              Padding(
                padding: 
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                  child: new TextField(
                    autofocus: true,
                    decoration: new InputDecoration(focusColor: Colors.blue,labelText: 'Email or Username',hoverColor: Colors.blue),
                  ),
              ),
              new SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: 
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                  child: new TextField(
                    obscureText: true,
                    decoration: new InputDecoration(labelText:"Password"),  
                  ),                  
              ),
              new Column(
                children: <Widget>[
               Row(                
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 100.0 , right:100.0, top: 10.0),
                        child: GestureDetector( 
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Tabs()
                              //builder: (context) => Dashboard()
                            ));
                          },
                        
                        child: new Container(
                          alignment: Alignment.center,
                          height: 60.0,
                          
                          decoration: new BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: new BorderRadius.circular(30.0)),
                            child: new Text("Login",
                            style: new TextStyle(fontSize: 20.0, color: Colors.white
                            ))),
                            ),
                          ),                          
                      ),
                ]),
                new Row(                                    
                    children:[ Padding(
                          padding: const EdgeInsets.only(
                            left: 130.0, right: 20.0, top: 10.0),
                            child: new Container(
                              alignment: Alignment.center,
                              height: 60.0,
                              child: new Text("Forgot Password?",
                                style: new TextStyle(
                                  fontSize: 12.0, color: Colors.blueAccent))),                                              )
                     ] ),              
                          
                        ],
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: GestureDetector(
                               onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                              builder: (context) => SignUp()
                              ));
                          },child:
                          new Text("Sign Up", style: new TextStyle(
                                fontSize: 17.0, color: Colors.blueAccent,fontWeight: FontWeight.bold)),
                            ),
                            )],
                        ),
                      )
                    ],
          ),
        ));
    
      
       
  }
}

