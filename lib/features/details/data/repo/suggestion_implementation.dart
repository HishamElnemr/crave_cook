import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:recipe_app/core/errors/errors.dart';
import 'package:recipe_app/core/utils/api_services.dart';
import 'package:recipe_app/features/details/data/repo/suggestion_repo.dart';
import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';

class SuggestionImplementation implements SuggestionRepo {
  final ApiServices apiServices;
  SuggestionImplementation(this.apiServices);
  @override
  Future<Either<Errors, List<RecipeModel>>> getSuggestions() async {
    try {
      var data = await apiServices.fetchRecipeData(
          endpoint: 'type=dessert&number=15&random=true');
      List<RecipeModel> recipes = [];
      for (var i in data['results']) {
        recipes.add(RecipeModel.fromJson(i));
      }
      return Right(recipes);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailur.fromDioError(e));
      } else {
        return Left(ServerFailur(e.toString()));
      }
    }
  }
}
