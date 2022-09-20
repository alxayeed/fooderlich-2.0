import 'package:flutter/material.dart';
import 'package:fooderlich/models/models.dart';
import 'package:fooderlich/screens/empty_grocery_screen.dart';
import 'package:provider/provider.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildGroceryScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO 11: present groceryItemScreen
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget buildGroceryScreen() {
    return Consumer<GroceryManager>(builder: (context, groceryManager, child) {
      if (groceryManager.groceryItems.isNotEmpty) {
        // TODO 25: Add GroceryListScreen
        return Container();
      } else {
        return const EmptyGroceryScreen();
      }
    });
  }
}
