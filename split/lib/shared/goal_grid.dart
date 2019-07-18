import 'package:flutter/material.dart';

class GoalGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Grid List';

    return GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Goal $index',
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }),
        );
  }
}