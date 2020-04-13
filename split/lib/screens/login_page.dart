import 'package:access/screens/acc_creation.dart';
import 'package:flutter/material.dart';
import 'registration.dart';
import 'goal.dart';
import 'package:firebase_auth/firebase_auth.dart';


class LoginPage extends StatefulWidget{
  @override 
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  
  String _email;
  String _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        backgroundColor: Colors.lightBlue[50],
        elevation: 0.0,
        ),
        body: Form(
          key: _formKey,
          child: new Container(
          decoration: BoxDecoration(color: Colors.lightBlue[50]),
          width: double.infinity,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Image.asset('assets/splitlogo.png',width:230.0,height:120.0),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 80.0,left: 8.0),
                  child: new Text("Save Smart",
                    style: new TextStyle(fontSize: 20.0,
                    //fontWeight: FontWeight.w300
                    fontWeight: FontWeight.bold,
                    //color: Colors.blue,
                    ),
                  ),
                  )
                ],
              ),
              Padding(
                padding: 
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                  child: new TextFormField(
                    maxLines:1,
                    autofocus: true,
                    onSaved: (input) => _email = input,
                    decoration: new InputDecoration(
                      focusColor: Colors.blue,
                      hintText: 'Email or Username',
                      hoverColor: Colors.blue,
                      icon: new Icon(
                        Icons.mail,
                        //color: Colors.blueAccent,
                        color: const Color(0xFF0D47A1)
                      )
                      ),
                  ),
              ),
              new SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: 
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                  child: new TextFormField(
                    onSaved: (input) => _password = input,
                    maxLines: 1,
                    obscureText: true,
                    autofocus: false,
                    decoration: new InputDecoration(
                      hintText:"Password",
                      icon: new Icon(
                        Icons.lock,
                        color: const Color(0xFF0D47A1)
                      ),
                      ),  
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
                        left: 100.0 , right:100.0, top: 80.0),
                        child: GestureDetector( 
                          onTap: (){
                           signIn();                          
                          },
                        child: new Container(
                          alignment: Alignment.center,
                          height: 60.0,
                          decoration: new BoxDecoration(
                            //color: Colors.blueAccent,
                            color: const Color(0xFF0D47A1),
                            borderRadius: new BorderRadius.circular(30.0)
                            ),
                            child: new Text("Login",
                            style: new TextStyle(fontSize: 22.0, 
                            color: Colors.white
                            ))),
                          
                            ),
                          ),
                      ),
                ]),
                new Row(                                    
                    children:[ Padding(
                          padding: const EdgeInsets.only(
                            left: 140.0, right: 20.0, top: 1.0),
                            child: new Container(
                              alignment: Alignment.center,
                              height: 60.0,
                              child: new Text("Forgot Password?",
                                style: new TextStyle(
                                  fontSize: 15.0,
                                  color: const Color(0xFF0D47A1),
                                  fontWeight: FontWeight.bold,
                                  ))), 
                               )
                     ] ),              
                          
                        ],
                      ),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              
                              padding: const EdgeInsets.only(bottom: 80.0, left:20),
                              child: GestureDetector(
                               onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                              builder: (context) => SignUp()
                              ));
                          },child:
                          new Text("Sign Up for online banking", style: new TextStyle(
                                fontSize: 17.0, 
                                color: const Color(0xFF0D47A1),
                                fontWeight: FontWeight.bold)),
                            ),
                            )],
                        ),
                      )
              ]


            ),
          )
        
        ),
    );
  }


 Future<void> signIn() async{
  final formState = _formKey.currentState;
  if(formState.validate()){
    formState.save();
    try{
       FirebaseUser user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password:_password);
       //Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard(user: user)));
       Navigator.push(context, MaterialPageRoute(builder: (context) => App()));

    }catch(e){
      print(e.message);
    }

  }
 
}

}

