import 'package:flutter/material.dart';
import 'package:fooderlich/models/models.dart';

class GroceryTile extends StatelessWidget {
  final GroceryItem groceryItem;
  final Function(bool?)? onComplete;
  final TextDecoration textDecoration;
  GroceryTile({
    Key? key,
    required this.groceryItem,
    this.onComplete,
  })  : textDecoration = groceryItem.isComplete
            ? TextDecoration.lineThrough
            : TextDecoration.none,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO 21: Change this widget
    return Container(
      height: 100.0,
      color: Colors.purple,
    );
  }

  // TODO: Add buildImportance()

  // TODO: Add buildDate()

  // TODO: Add buildCheckbox()

}
