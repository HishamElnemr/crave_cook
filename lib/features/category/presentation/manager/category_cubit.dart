import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/features/category/data/repo/category_repo.dart';
import 'package:recipe_app/features/category/presentation/manager/category_states.dart';

class CategoryCubit extends Cubit<CategoryStates> {
  CategoryCubit(this.categoryRepo) : super(CategoryInitial());

  final CategoryRepo categoryRepo;
  Future<void> getCategories({required String type}) async {
    emit(CategoryLoading());
    var result = await categoryRepo.getCategories(type: type);
    result.fold(
      (error) => emit(CategoryFailure(error.toString())),
      (success) => emit(CategorySuccess(success)
      ),
    );

  }
}
