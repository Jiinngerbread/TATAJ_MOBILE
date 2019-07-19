import 'package:flutter/material.dart';

class GoalGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Grid List';

    return GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          scrollDirection: Axis.horizontal,
          crossAxisCount: 2,
          padding: EdgeInsets.all(20.0),
          // Generate 100 widgets that display their index in the List.
          children: List.generate(6, (index) {
            return Center(
                        child: Card(
                          child: InkWell(
                            splashColor: Colors.indigo[900].withAlpha(30),
                            onTap: () {
                              print('Card tapped.');
                            },
                            child: Container(
                              width: 300,
                              height: 300,
                              padding: EdgeInsets.all(20.0),
                              child: Text('Goal $index'),
                            ),
                          ),
                        ),
                      );
          }),
        );
  }
}