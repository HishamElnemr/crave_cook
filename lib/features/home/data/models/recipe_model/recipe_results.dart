import 'recipe_model.dart';

class RecipeResults {
  List<RecipeModel>? results;
  int? offset;
  int? number;
  int? totalResults;

  RecipeResults({this.results, this.offset, this.number, this.totalResults});

  factory RecipeResults.fromJson(Map<String, dynamic> json) => RecipeResults(
        results: (json['results'] as List<dynamic>?)
            ?.map((e) => RecipeModel.fromJson(e as Map<String, dynamic>))
            .toList(),
        offset: json['offset'] as int?,
        number: json['number'] as int?,
        totalResults: json['totalResults'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'results': results?.map((e) => e.toJson()).toList(),
        'offset': offset,
        'number': number,
        'totalResults': totalResults,
      };
}
