import 'package:flutter/material.dart';
import 'package:recipe_app/features/category/presentation/views/categories_recipes_view/widgets/simple_recipe_result.dart';
import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';

class CategoryRecipeResult extends StatelessWidget {
  const CategoryRecipeResult({super.key, required this.recipeModel, required this.onTap});
  final RecipeModel recipeModel;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return SimpleRecipeResult(
        title: recipeModel.title!,
        imageUrl: recipeModel.image!,
        price: recipeModel.pricePerServing!,
        time: recipeModel.readyInMinutes!,
        onTap: onTap);
  }
}
