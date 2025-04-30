import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/popular_widget/popular_widget.dart';

class PopularGridWidget extends StatelessWidget {
  const PopularGridWidget({
    super.key,
    required this.columns,
    required this.aspectRatio,
    required this.recipesList,
  });

  final int columns;
  final double aspectRatio;
  final List<RecipeModel> recipesList;
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: PopularWidget(
              recipeModel: recipesList[index],
              onTap: () {
                GoRouter.of(context).push(
                  AppRouter.detailsView,
                  extra: recipesList[index],
                );
              },
            ),
          );
        },
        childCount: recipesList.length,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: columns,

        childAspectRatio: aspectRatio,
      ),
    );
  }
}
