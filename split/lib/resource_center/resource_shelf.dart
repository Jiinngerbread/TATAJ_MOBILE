import 'package:access/resource_center/resource_body.dart';
import 'package:flutter/material.dart';

Color themeColor = Color(0xFF0D47A1);

class ResourceShelf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      body: new Container(
        color: themeColor,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            new Hero(
                tag: 'image-hero',
                child: new Container(
                  margin: const EdgeInsets.only(bottom: 20.0, top: 10.0),
                  child: new Image.asset('assets/images/splitlogo_icon.png',
                  width: 50.0, height: 50.0, color: Colors.white),
                )),
            new Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: new Text('Learn. Save Smart. ',
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w200)),
            ),
            new Container(
              height: 420.0,
              width: double.infinity,
              decoration: new BoxDecoration(
              borderRadius: new BorderRadius.only(topLeft: const Radius.circular(30.0), topRight: const Radius.circular(30.0)),
              color: Colors.white,
              ),
              child: new DefaultTabController(
                length: 1,
                child: new Column(
                  children: <Widget>[
                    new TabBar(
                      indicatorWeight: 3.0,
                      isScrollable: true,
                      labelColor: Colors.black87,
                      tabs: <Widget>[
                        new Tab(text: 'ARTICLES & TIPS'),
                      ],
                    ),
                    new ResourceBody()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
