import 'package:flutter/material.dart';
import 'package:fooderlich/components/grocery_tile.dart';
import 'package:fooderlich/models/models.dart';

class GroceryListScreen extends StatelessWidget {
  final GroceryManager groceryManager;
  const GroceryListScreen({
    Key? key,
    required this.groceryManager,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final groceryItems = groceryManager.groceryItems;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
        itemCount: groceryItems.length,
        itemBuilder: (context, index) {
          final item = groceryItems[index];
          //TODO: Wrap in Dismissable and InkWell
          return GroceryTile(
            key: Key(item.id),
            groceryItem: item,
            onComplete: (change) {
              if (change != null) {
                groceryManager.completeItem(index, change);
              }
            },
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 16.0,
          );
        },
      ),
    );
  }
}
