import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.light();
    // TODO: Apply Home widget
    // 3
    return MaterialApp(
      // TODO: Add theme
      title: 'Fooderlich',
      theme: theme,
      // 4
      home: Scaffold(
        // TODO: Style the title
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Fooderlich',
              style: theme.textTheme.headline6,
            )),
        // TODO: Style the body text
        body: Center(
            child: Text(
          'Let\'s get cooking 👩‍🍳',
          style: theme.textTheme.bodyText1,
        )),
      ),
    );
  }
}
