import 'package:access/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,),
        body: Container(
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
                    decoration: new InputDecoration(labelText: 'Email or Username'),
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
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0 , right: 5.0, top: 10.0),
                        child: GestureDetector( 
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Dashboard()
                            ));
                          },
                        
                        child: new Container(
                          alignment: Alignment.center,
                          height: 60.0,
                          decoration: new BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: new BorderRadius.circular(9.0)),
                            child: new Text("Login",
                            style: new TextStyle(fontSize: 20.0, color: Colors.white
                            ))),
                            ),
                          ),                          
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0, right: 20.0, top: 10.0),
                            child: new Container(
                              alignment: Alignment.center,
                              height: 60.0,
                              child: new Text("Forgot Password?",
                                style: new TextStyle(
                                  fontSize: 17.0, color: Colors.blueAccent))),                                              )
                            ),                
                          
                        ],
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 18.0),
                              child: new Text("Sign Up", style: new TextStyle(
                                fontSize: 17.0, color: Colors.lightBlueAccent,fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      )
                    ],
          ),
        ),
      );
       
  }
}

