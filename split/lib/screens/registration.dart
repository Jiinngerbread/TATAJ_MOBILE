import 'package:flutter/material.dart';

class SignUp extends StatelessWidget{
 
  Widget build(BuildContext context){
     Size screenSize = MediaQuery.of(context).size;
    return new Scaffold(
    body: new SingleChildScrollView(
      child: new Container(
        padding: new EdgeInsets.all(16.0),
        decoration: BoxDecoration(color: Colors.lightBlue[50]),
        child: new Container(
          child:
          new Column(mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
           Column(
              mainAxisAlignment: MainAxisAlignment.center,             
              children: <Widget>[
                
                new Image.asset('assets/splitlogo.png',width: 300,height: 100,
                
                          
                )
              ],
            ),
            SizedBox(height:26),
           
          new Column(
            children: <Widget>[
    
              new Form(
                child: new Column(                 
                  children: <Widget>[
                     new TextField(
                      autofocus: true,
                      decoration: new InputDecoration(
                        focusColor: Colors.blue,
                        labelText: 'First Name',
                        hoverColor: Colors.blue),
                            ),
                     new TextField(
                      autofocus: true,
                      decoration: new InputDecoration(
                        focusColor: Colors.blue,
                        labelText: 'Last Name',
                        hoverColor: Colors.blue),
                            ),
                     new TextField(
                      autofocus: true,
                      decoration: new InputDecoration(
                        focusColor: Colors.blue,
                        labelText: 'Username',
                        hoverColor: Colors.blue),
                            ),
                     new TextField(
                      autofocus: true,
                      decoration: new InputDecoration(
                        focusColor: Colors.blue,
                        labelText: 'Email Address',
                        hoverColor: Colors.blue),
                            ),
                     new TextField(
                      autofocus: true,
                      obscureText: true,
                      decoration: new InputDecoration(                        
                        focusColor: Colors.blue,
                        labelText: 'Password',
                        hoverColor: Colors.blue),
                            ),
                     new TextField(
                      autofocus: true,
                      obscureText: true,
                      decoration: new InputDecoration(                        
                        focusColor: Colors.blue,
                        labelText: 'Confirm Password',
                        hoverColor: Colors.blue),                        
                            ),                     
                      new SizedBox(height: 30,),
                      new Padding(
                        padding: EdgeInsets.symmetric(vertical: 60, horizontal: 60),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50.0,                          
                          decoration: new BoxDecoration(
                            color: const Color(0xFF003366),
                            borderRadius: new BorderRadius.circular(60.0)),
                            child: new Text("SIGN UP",
                            style: new TextStyle(fontSize: 20.0, color: Colors.white
                            ))),
                )]),
                          ),                               
                  ],
                  )
        ])
              )
    )         
    
      ));
    

    
  }
}