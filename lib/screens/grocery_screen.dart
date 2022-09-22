import 'package:flutter/material.dart';
import 'package:fooderlich/models/models.dart';
import 'package:fooderlich/screens/empty_grocery_screen.dart';
import 'package:fooderlich/screens/grocery_item_screen.dart';
import 'package:fooderlich/screens/grocery_list_screen.dart';
import 'package:provider/provider.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildGroceryScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final groceryManager =
              Provider.of<GroceryManager>(context, listen: false);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => GroceryItemScreen(
                      onCreate: (item) {
                        groceryManager.addItem(item);
                        Navigator.pop(context);
                      },
                      onUpdate: (item) {})));
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget buildGroceryScreen() {
    return Consumer<GroceryManager>(builder: (context, groceryManager, child) {
      if (groceryManager.groceryItems.isNotEmpty) {
        return GroceryListScreen(groceryManager: groceryManager);
      } else {
        return const EmptyGroceryScreen();
      }
    });
  }
}
