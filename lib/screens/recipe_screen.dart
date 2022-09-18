import 'package:flutter/material.dart';
import 'package:fooderlich/api/mock_fooderlich_service.dart';
import 'package:fooderlich/components/recipe_grid_view.dart';
import 'package:fooderlich/models/models.dart';

class RecipeScreen extends StatelessWidget {
  RecipeScreen({Key? key}) : super(key: key);

  final exploreService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: exploreService.getRecipes(),
        builder: (context, AsyncSnapshot<List<SimpleRecipe>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return RecipeGridView(recipes: snapshot.data ?? []);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
