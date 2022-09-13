import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatefulWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);

  @override
  State<Fooderlich> createState() => _FooderlichState();
}

class _FooderlichState extends State<Fooderlich> {
  ThemeData theme = FooderlichTheme.light();

  @override
  Widget build(BuildContext context) {
    // TODO: Apply Home widget
    // 3
    bool lightTheme = theme == FooderlichTheme.light();
    return MaterialApp(
      // TODO: Add theme
      title: 'Fooderlich',
      theme: theme,
      // 4
      home: Scaffold(
        // TODO: Style the title
        appBar: AppBar(title: const Text('Fooderlich')),
        // TODO: Style the body text
        body: Center(
            child: Column(children: [
          Text(
            'Let\'s get cooking 👩‍🍳',
            style: theme.textTheme.bodyText1,
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  theme = lightTheme
                      ? FooderlichTheme.dark()
                      : FooderlichTheme.light();
                });
              },
              child: Text(lightTheme ? "Dark Mode" : "Light Mode"))
        ])),
      ),
    );
  }
}
