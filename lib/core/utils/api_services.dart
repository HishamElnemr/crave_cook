import 'package:dio/dio.dart';

class ApiServices {
  final dio = Dio();
  final _baseUrl =
      'https://api.spoonacular.com/recipes/complexSearch?apiKey=43392e48cc5146eaa1a6131fc0c1766e&addRecipeInformation=true';

  Future<Map<String, dynamic>> fetchRecipeData(
      {required String endpoint}) async {
    var response = await dio.get('$_baseUrl&$endpoint');    
    return response.data;
  }
}
