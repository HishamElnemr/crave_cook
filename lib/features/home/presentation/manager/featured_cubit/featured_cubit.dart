import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/features/home/data/repos/home_repo.dart';
import 'package:recipe_app/features/home/presentation/manager/featured_cubit/featured_recipes_states.dart';

class FeaturedCubit extends Cubit<FeaturedRecipesStates> {
  FeaturedCubit(this.homeRepo) : super(FeaturedRecipesInitial());
  HomeRepo homeRepo;
  Future<void> getFeaturedRecipes() async {
    emit(FeaturedRecipesLoading());

    var data = await homeRepo.getFeaturedRecipes();
    data.fold(
      (failure) => emit(FeaturedRecipesFailure(failure.errorMessage)),
      (success) => emit(FeaturedRecipesSuccess(success)),
    );
  }
}
