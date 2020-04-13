import 'package:flutter/material.dart';

class TextAndIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
        //title: Text('Text and Icon Button'),
      //),
      body: Center(
        child: FlatButton.icon(
          color: Colors.blue,
          icon: Icon(Icons.add), //`Icon` to display
          label: Text('Add a Photo'), //`Text` to display
          onPressed: () {
            //Code to execute when Floating Action Button is clicked
            //...
          },
        ),
      ),
    );
  }
}