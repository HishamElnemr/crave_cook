import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/featured_widget/featured_widget.dart';

class FeaturedListViewBody extends StatelessWidget {
  const FeaturedListViewBody({
    super.key,
    required this.recipes,
  });
  final List<RecipeModel> recipes;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: FeaturedWidget(
              recipeModel: recipes[index],
              onTap: () {
                GoRouter.of(context).push(
                  AppRouter.detailsView,
                  extra: recipes[index],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
