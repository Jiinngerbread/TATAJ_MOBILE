import 'dart:async';
import 'package:access/resource_center/resource_shelf.dart';
import 'package:flutter/material.dart';



//Color themeColor = Color(0xFF0D47A1);

class ResourceReaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      //title: 'Book Reader',
      home: new ResourceReaderHomePage(),
      theme: new ThemeData(primarySwatch: Colors.blue,
        //primaryColor: const Color(0xFFe91e63),
        primaryColor: const Color(0xFF0D47A1),
        accentColor: const Color(0xFF6c5656),
        canvasColor: const Color(0xFFfafafa),
      ),
    );
  }
}

class ResourceReaderHomePage extends StatefulWidget {
  @override
  _ResourceHomePageState createState() => new _ResourceHomePageState();
}

class _ResourceHomePageState extends State<ResourceReaderHomePage> with SingleTickerProviderStateMixin {

  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = new AnimationController(duration: const Duration(milliseconds: 250), vsync: this);
    animation = new Tween(begin: 1.0, end: 0.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
          color: Colors.blue[900],
          child: new Stack(
            children: <Widget>[
              new Center(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Hero(
                        tag: 'image-hero',
                        child: new Container(
                          margin: const EdgeInsets.only(top: 20.0),
                          child: new Image.asset('assets/images/splitlogo_icon.png',
                              width: 70.0, height: 70.0, color: Colors.white),
                        )),
                    new Hero(
                        tag: 'hero-text',
                        child: new Container(
                          margin: const EdgeInsets.only(top: 10.0),
                          child: new Text('Learn. Save Smart.',
                              style: const TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200)),
                        )),
                    new Opacity(
                      opacity: animation.value,
                      child: new Container(
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(30.0)),
                        child: new ClipRRect(
                          borderRadius: new BorderRadius.circular(50.0),
                          child: new MaterialButton(
                            minWidth: 150.0,
                            onPressed: (){
                              controller.forward();
                              new Future.delayed(new Duration(milliseconds: 250)).then((_) =>
                                  Navigator.of(context).push(new MaterialPageRoute<Null>(
                                      builder: (BuildContext context) {
                                        return new ResourceShelf();
                                      }
                                  )));
                            },
                            color: Colors.white,
                            child: new Text('Start Exploring',
                                style: const TextStyle(
                                    color: Colors.black87,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
