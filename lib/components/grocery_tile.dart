import 'package:flutter/material.dart';
import 'package:fooderlich/models/models.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

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
    return SizedBox(
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 5.0,
                color: groceryItem.color,
              ),
              const SizedBox(
                width: 16.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    groceryItem.name,
                    style: GoogleFonts.lato(
                        decoration: textDecoration,
                        fontSize: 21.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  buildDate(),
                  const SizedBox(
                    height: 4.0,
                  ),
                  buildImportance()
                ],
              )
            ],
          ),
          Row(
            children: [
              Text(
                groceryItem.quantity.toString(),
                style: GoogleFonts.lato(
                  decoration: textDecoration,
                  fontSize: 21.0,
                ),
              ),
              buildCheckbox()
            ],
          )
        ],
      ),
    );
  }

  Widget buildImportance() {
    //TODO: replace with switch statement
    if (groceryItem.importance == Importance.low) {
      return Text(
        'Low',
        style: GoogleFonts.lato(decoration: textDecoration),
      );
    } else if (groceryItem.importance == Importance.medium) {
      return Text(
        'Medium',
        style: GoogleFonts.lato(
            fontWeight: FontWeight.w800, decoration: textDecoration),
      );
    } else if (groceryItem.importance == Importance.high) {
      return Text(
        'High',
        style: GoogleFonts.lato(
            fontWeight: FontWeight.w900, decoration: textDecoration),
      );
    } else
      (throw Exception('This Importance type does not exist'));
  }

  Widget buildDate() {
    final dateFormatter = DateFormat('MMMM dd, hh:mm a'); //TODO: learn more
    final dateString = dateFormatter.format(groceryItem.date);
    return Text(
      dateString,
      style: TextStyle(decoration: textDecoration),
    );
  }

  Widget buildCheckbox() {
    return Checkbox(
      value: groceryItem.isComplete,
      onChanged: onComplete,
    );
  }
}
