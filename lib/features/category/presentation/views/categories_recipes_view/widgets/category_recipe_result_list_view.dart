import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/features/category/presentation/views/categories_recipes_view/widgets/category_recipe_result.dart';
import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';

class CategoryRecipeResultListView extends StatelessWidget {
  const CategoryRecipeResultListView({
    super.key,
    required this.categories,
  });

  final List<RecipeModel> categories;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric( vertical: 20),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: CategoryRecipeResult(
            onTap: () {
              GoRouter.of(context).push(
                AppRouter.detailsView,
                extra: categories[index],
              );
            },
            recipeModel: categories[index],
          ),
        );
      },
    );
  }
}
