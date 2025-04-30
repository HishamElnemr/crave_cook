import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';

class PopularStates {}

class PopularInitial extends PopularStates {}

class PopularLoading extends PopularStates {}

class PopularSuccess extends PopularStates {
  final List<RecipeModel> recipesList;
  PopularSuccess(this.recipesList);
}

class PopularFailure extends PopularStates {
  final String errorMessage;
  PopularFailure(this.errorMessage);
}