import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/features/details/data/repo/suggestion_repo.dart';
import 'package:recipe_app/features/details/presentation/manager/suggstion_states.dart';

class SuggestionCubit extends Cubit<SuggstionStates> {
  SuggestionCubit(this.suggestionRepo) : super(SuggestionLoading());
  final SuggestionRepo suggestionRepo;
  Future<void> getSuggestions() async {
    emit(SuggestionLoading());
    var data = await suggestionRepo.getSuggestions();
    data.fold(
      (failure) => emit(SuggestionError(failure.errorMessage)),
      (success) => emit(
        SuggestionSuccess(
          success,
        ),
      ),
    );
  }
}
