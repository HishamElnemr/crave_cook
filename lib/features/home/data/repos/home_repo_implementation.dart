import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:recipe_app/core/errors/errors.dart';
import 'package:recipe_app/core/utils/api_services.dart';
import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';
import 'package:recipe_app/features/home/data/repos/home_repo.dart';

class HomeRepoImplementation implements HomeRepo {
  HomeRepoImplementation(this.apiServices);
  final ApiServices apiServices;
  @override
  Future<Either<Errors, List<RecipeModel>>> getFeaturedRecipes() async {
    try {
      var data = await apiServices.fetchRecipeData(
          endpoint: 'sort=aggregateLikes&number=10');
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

  @override
  Future<Either<Errors, List<RecipeModel>>> getPopularRecipes(
      {required String type}) async {
    try {
      var data = await apiServices.fetchRecipeData(
          endpoint: 'sort=popularity&type=$type&number=10');
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
