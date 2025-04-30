import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';

class SuggstionStates {}

class SuggestionLoading extends SuggstionStates {}

class SuggestionSuccess extends SuggstionStates {
  final List<RecipeModel> suggestions;

  SuggestionSuccess(this.suggestions);
}

class SuggestionError extends SuggstionStates {
  final String errorMessage;

  SuggestionError(this.errorMessage);
}
