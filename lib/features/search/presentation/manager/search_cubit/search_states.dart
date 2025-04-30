import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';

class SearchStates {}

class SearchInitial extends SearchStates {}

class SearchLoading extends SearchStates {}

class SearchSuccess extends SearchStates 
{
  final List<RecipeModel> recipes;
  SearchSuccess(this.recipes);
}

class SearchError extends SearchStates 
{
  final String error;
  SearchError(this.error);
}