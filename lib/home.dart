import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //TODO: Add state variables
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: Style the title
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Fooderlich',
            style: Theme.of(context).textTheme.headline6,
          )),
      // TODO: Show selected tab
      body: Center(
          child: Text(
        'Let\'s get cooking 👩‍🍳',
        style: Theme.of(context).textTheme.bodyText1,
      )),
      //TODO: Add bottom navigation bar
    );
  }
}
