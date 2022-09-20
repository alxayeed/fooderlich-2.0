import 'package:flutter/material.dart';
import 'package:fooderlich/models/models.dart';

class GroceryItemScreen extends StatefulWidget {
  final Function(GroceryItem) onCreate;
  final Function(GroceryItem) onUpdate;
  final GroceryItem? originalItem;
  final bool isUpdating;
  const GroceryItemScreen({
    Key? key,
    required this.onCreate,
    required this.onUpdate,
    this.originalItem,
  })  : isUpdating =
            (originalItem != null), //TODO: what does this notation mean ?
        super(key: key);

  @override
  State<GroceryItemScreen> createState() => _GroceryItemScreenState();
  // TODO: Add gorcery item screen state properties
}

class _GroceryItemScreenState extends State<GroceryItemScreen> {
  @override
  Widget build(BuildContext context) {
    //TODO 12: Add GroceryItemScreen
    return Container(
      color: Colors.tealAccent,
    );
    // TODO: Add buildNameField()
    // TODO: Add buildImportanceField()
    // TODO: Add buildDateField()
    // TODO: Add buildTimeField()
    // TODO: Add buildColorField()
    // TODO: Add buildQuantityField()
  }
}
