import 'package:dartz/dartz.dart';
import 'package:recipe_app/core/errors/errors.dart';
import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';

abstract class SearchViewRepo 
{
  Future<Either<Errors, List<RecipeModel>>> searchRecipes({required String query});
}