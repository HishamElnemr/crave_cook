import 'package:dartz/dartz.dart';
import 'package:recipe_app/core/errors/errors.dart';
import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';

abstract class SuggestionRepo {
  Future<Either<Errors, List<RecipeModel>>> getSuggestions();
}