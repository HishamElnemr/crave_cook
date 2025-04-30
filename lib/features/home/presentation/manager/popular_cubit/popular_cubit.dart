import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/features/home/data/repos/home_repo.dart';
import 'package:recipe_app/features/home/presentation/manager/popular_cubit/popular_states.dart';

class PopularCubit extends Cubit<PopularStates> {
  PopularCubit(this.homeRepo) : super(PopularInitial());
  HomeRepo homeRepo;
  Future<void> getPopularRecipes({required String type}) async {
    emit(PopularLoading());
    var data = await homeRepo.getPopularRecipes(type: type);
    data.fold(
      (failure) => emit(PopularFailure(failure.errorMessage)),
      (success) => emit(PopularSuccess(success)),
    );
  }
}
