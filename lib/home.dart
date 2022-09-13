import 'package:flutter/material.dart';
import 'package:fooderlich/card1.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = [
    Card1(),
    //TODO: Replace with Card2
    Container(color: Colors.blue),
    //TODO: Replace with Card3
    Container(color: Colors.cyan),
  ];

  void _onTappedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Fooderlich',
            style: Theme.of(context).textTheme.headline6,
          )),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onTappedItem,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: "Card 1"),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: "Card 2"),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: "Card 3")
        ],
      ),
    );
  }
}
