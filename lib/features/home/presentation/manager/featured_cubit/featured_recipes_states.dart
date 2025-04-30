import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';

class FeaturedRecipesStates {}

class FeaturedRecipesInitial extends FeaturedRecipesStates {}

class FeaturedRecipesLoading extends FeaturedRecipesStates {}

class FeaturedRecipesFailure extends FeaturedRecipesStates {
  final String error;

  FeaturedRecipesFailure(this.error);
}

class FeaturedRecipesSuccess extends FeaturedRecipesStates 
{
 final List<RecipeModel> featuredRecipes;
  FeaturedRecipesSuccess(this.featuredRecipes);
}