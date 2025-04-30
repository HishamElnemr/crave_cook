import 'package:get_it/get_it.dart';
import 'package:recipe_app/core/utils/api_services.dart';
import 'package:recipe_app/features/category/data/repo/category_repo_implementation.dart';
import 'package:recipe_app/features/details/data/repo/suggestion_implementation.dart';

import 'package:recipe_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:recipe_app/features/search/data/repos/search_view_implementation.dart';

final getIt = GetIt.instance;
void setUp() {
  getIt.registerSingleton<ApiServices>(ApiServices());
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
      getIt<ApiServices>(),
    ),
  );
  getIt.registerSingleton<SearchViewImplementation>(
    SearchViewImplementation(getIt<ApiServices>()),
  );
  getIt.registerSingleton<SuggestionImplementation>(
    SuggestionImplementation(getIt<ApiServices>()),
  );
  getIt.registerSingleton<CategoryRepoImplementation>(
    CategoryRepoImplementation(
      getIt<ApiServices>(),
    ),
  );
}
