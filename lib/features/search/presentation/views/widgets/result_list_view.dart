import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';
import 'package:recipe_app/features/search/presentation/views/widgets/recipe_result/recipe_result.dart';

class ResultListView extends StatelessWidget {
  const ResultListView({
    super.key,
    required this.recipes,
  });
  final List<RecipeModel> recipes;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: RecipeResult(
                recipeModel: recipes[index],
                onTap: () {
                  GoRouter.of(context).push(
                    AppRouter.detailsView,
                    extra: recipes[index],
                  );
                },
              ),
            );
          }),
    );
  }
}
