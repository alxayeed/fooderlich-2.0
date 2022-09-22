import 'package:flutter/material.dart';
import 'package:fooderlich/components/grocery_tile.dart';
import 'package:fooderlich/models/models.dart';
import 'package:fooderlich/screens/grocery_item_screen.dart';

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
          return Dismissible(
            key: Key(item.id),
            direction: DismissDirection.startToEnd,
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerLeft,
              child: const Icon(
                Icons.delete_forever,
                color: Colors.white,
                size: 50.0,
              ),
            ),
            onDismissed: (direction) {
              groceryManager.deleteItem(index);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('${item.name} deleted'),
              ));
            },
            child: InkWell(
              child: GroceryTile(
                  key: Key(item.id),
                  groceryItem: item,
                  onComplete: (change) {
                    if (change != null) {
                      groceryManager.completeItem(index, change);
                    }
                  }),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GroceryItemScreen(
                              originalItem: item,
                              onCreate: (item) {},
                              onUpdate: (item) {
                                groceryManager.updateItem(item, index);
                                Navigator.pop(context);
                              },
                            )));
              },
            ),
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
