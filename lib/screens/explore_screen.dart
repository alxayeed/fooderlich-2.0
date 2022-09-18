import 'package:flutter/material.dart';
import 'package:fooderlich/api/mock_fooderlich_service.dart';
import 'package:fooderlich/components/todays_recipe_list_view.dart';
import 'package:fooderlich/models/models.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = MockFooderlichService();
  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO 1: Add TodayRecipeListView
    return FutureBuilder(
        future: mockService.getExploreData(),
        builder: (context, AsyncSnapshot<ExploreData> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final recipes = snapshot.data?.todayRecipes ?? [];
            return TodaysRecipeListView(recipes: recipes);
          } else {
            return Center(child: CircularProgressIndicator());
          }
          ;
        });
  }
}
