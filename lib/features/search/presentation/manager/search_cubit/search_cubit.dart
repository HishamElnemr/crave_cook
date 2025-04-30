import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/features/search/data/repos/search_view_repo.dart';
import 'package:recipe_app/features/search/presentation/manager/search_cubit/search_states.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit(this.searchViewRepo) : super(SearchInitial());
  SearchViewRepo searchViewRepo;
  Future<void> searchRecipes({required String query}) async {
    emit(SearchLoading());
    var data = await searchViewRepo.searchRecipes(query: query);
    data.fold(
      (error) => emit(SearchError(error.errorMessage)),
      (success) => emit(SearchSuccess(success)),
    );
  }
}
