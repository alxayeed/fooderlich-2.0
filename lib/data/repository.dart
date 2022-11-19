import 'dart:core';

import 'models/models.dart';

abstract class Repository{
  //find methods
  Future<List<Recipe>> findAllRecipes();
  Future<Recipe> findRecipeById(int id);
  Future<List<Ingredient>> findAllIngredients();
  Future<List<Ingredient>> findRecipeIngredients(int recipeId);

  //streams
  Stream<List<Recipe>> watchAllRecipes();
  Stream<List<Ingredient>> watchAllIngredients();

  //insert methods
  Future<int> insertRecipe(Recipe recipe);
  Future<List<int>> insertIngredients(List<Ingredient> ingredients);

  //delete methods
  Future<void> deleteRecipe(Recipe recipe);
  Future<void> deleteIngredient(Ingredient ingredient);
  Future<void> deleteIngredients(List<Ingredient> ingredients);
  Future<void> deleteRecipeIngredients(int recipeId);

  //init and closing methods
  Future init();
  void close();
}