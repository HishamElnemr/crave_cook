import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/features/category/presentation/manager/category_cubit.dart';
import 'package:recipe_app/features/category/presentation/manager/category_states.dart';
import 'package:recipe_app/features/category/presentation/views/categories_recipes_view/widgets/category_recipe_result_list_view.dart';
import 'package:recipe_app/features/category/presentation/views/categories_recipes_view/widgets/recipes_loading.dart';

class CategoryRecipesListView extends StatelessWidget {
  const CategoryRecipesListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryStates>(
      builder: (context, state) {
        if (state is CategorySuccess) {
          return Expanded(
            child: CategoryRecipeResultListView(
              categories: state.categories,
            ),
          );
        } else if (state is CategoryFailure) {
          return Center(
            child: Text(
              state.errorMessage,
              style: const TextStyle(color: Colors.red),
            ),
          );
        } else {
          return RecipesLoading();
        }
      },
    );
  }
}
