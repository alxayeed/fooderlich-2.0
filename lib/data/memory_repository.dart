import 'dart:core';
import 'package:flutter/foundation.dart';

import 'repository.dart';
import 'models/models.dart';

class MemoryRepository extends Repository with ChangeNotifier {
  final List<Recipe> _currentRecipes = <Recipe>[];
  final List<Ingredient> _currentIngredients = <Ingredient>[];

  //TODO: Add find, insert and delete methods
  // find methods
  @override
  List<Recipe> findAllRecipes() {
    return _currentRecipes;
  }

  @override
  Recipe findRecipeById(int id) {
    return _currentRecipes.firstWhere((recipe) => recipe.id == id);
  }

  @override
  List<Ingredient> findAllIngredients() {
    return _currentIngredients;
  }

  @override
  List<Ingredient> findRecipeIngredients(int recipeId) {
    final recipe =
        _currentRecipes.firstWhere((recipe) => recipe.id == recipeId);

    final recipeIngredients = _currentIngredients
        .where((ingredient) => ingredient.recipeId == recipeId).toList();
    return recipeIngredients;
  }

  // insert methods
  @override
  int insertRecipe(Recipe recipe) {
    _currentRecipes.add(recipe);
    if(recipe.ingredients != null){
      insertIngredients(recipe.ingredients!);
    }
    notifyListeners();
    return 0;
  }

  @override
  List<int> insertIngredients(List<Ingredient> ingredients) {
    if(ingredients.length != 0){
      _currentIngredients.addAll(ingredients);
      notifyListeners();
    }
    return <int>[];
  }

  // delete methods

  @override
  void deleteIngredient(Ingredient ingredient) {
    _currentIngredients.remove(ingredient);
  }

  @override
  void deleteIngredients(List<Ingredient> ingredients) {
    _currentIngredients.removeWhere((ingredient) => ingredients.contains(ingredient));
    notifyListeners();
  }

  @override
  void deleteRecipe(Recipe recipe) {
   _currentRecipes.remove(recipe);
   if (recipe.id !=null){
     deleteRecipeIngredients(recipe.id!);
   }
   notifyListeners();
  }

  @override
  void deleteRecipeIngredients(int recipeId) {
    _currentIngredients.removeWhere((ingredient) => ingredient.recipeId == recipeId);
    notifyListeners();
  }


  @override
  Future init() {
    return Future.value(null);
  }

  @override
  void close() {}

}