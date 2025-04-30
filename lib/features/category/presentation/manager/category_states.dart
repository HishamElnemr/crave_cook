import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';

class CategoryStates {}

class CategoryInitial extends CategoryStates {}

class CategoryLoading extends CategoryStates {}

class CategorySuccess extends CategoryStates {
  final List<RecipeModel> categories;
  CategorySuccess(this.categories);
}

class CategoryFailure extends CategoryStates {
  final String errorMessage;

  CategoryFailure(this.errorMessage);
}
