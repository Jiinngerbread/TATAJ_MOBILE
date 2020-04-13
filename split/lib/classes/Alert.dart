import 'package:flutter/material.dart';

class Alertbox{
   Future<String> _asyncInputDialog(BuildContext context) async {
  String teamName = '';
  return showDialog<String>(
    context: context,
    barrierDismissible: false, // dialog is dismissible with a tap on the barrier
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Enter current team'),
        content: new Row(
          children: <Widget>[
            new Expanded(
                child: new TextField(
              autofocus: true,
              decoration: new InputDecoration(
                  labelText: 'Team Name', hintText: 'eg. Juventus F.C.'),
              onChanged: (value) {
                teamName = value;
              },
            ))
          ],
        ),
      );
    }
  );
  }
}