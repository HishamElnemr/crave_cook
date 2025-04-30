import 'package:flutter/material.dart';
import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/featured_widget/stack_body_widgets.dart';

class SteckBody extends StatelessWidget {
  const SteckBody({
    super.key,
    required this.recipeModel,
  });

  final RecipeModel recipeModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -10,
          right: -10,
          child: DishImage(
            imageUrl: recipeModel.image!,
          ),
        ),
        Positioned(
          left: 10,
          top: -5,
          right: 110,
          child: DishInfo(
            title: recipeModel.title!,
          ),
        ),
        Positioned(
          left: 10,
          bottom: 10,
          child: DishSource(
            source: 'By : ${recipeModel.sourceName!}',
          ),
        ),
        Positioned(
          left: 10,
          bottom: 50,
          child: DishStats(
            likes: recipeModel.aggregateLikes == null
                ? 0
                : recipeModel.aggregateLikes!,
            time: recipeModel.readyInMinutes == null
                ? 0
                : recipeModel.readyInMinutes!,
          ),
        ),
      ],
    );
  }
}
