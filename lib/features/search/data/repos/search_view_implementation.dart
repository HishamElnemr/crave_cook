import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:recipe_app/core/errors/errors.dart';
import 'package:recipe_app/core/utils/api_services.dart';
import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';
import 'package:recipe_app/features/search/data/repos/search_view_repo.dart';

class SearchViewImplementation implements SearchViewRepo {
  SearchViewImplementation( this.apiServices);
  ApiServices apiServices;
  @override
  Future<Either<Errors, List<RecipeModel>>> searchRecipes(
      {required String query}) async {
    try {
      var data = await apiServices.fetchRecipeData(
          endpoint: 'sort=popularity&query=$query&number=15');
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
