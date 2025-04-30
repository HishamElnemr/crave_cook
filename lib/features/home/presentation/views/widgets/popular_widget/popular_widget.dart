import 'package:flutter/material.dart';
import 'package:recipe_app/core/widgets/favorite_button_overlay.dart';
import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/popular_widget/recipe_image.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/popular_widget/recipe_state.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/popular_widget/recipe_title.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget(
      {super.key, required this.recipeModel, required this.onTap});
  final RecipeModel recipeModel;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * .45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF063336).withOpacity(0.1),
              offset: const Offset(0, 2),
              blurRadius: 16,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              Column(
                children: [
                  RecipeImage(recipeModel.image!),
                  SizedBox(height: 12),
                  Expanded(child: RecipeTitle(recipeModel.title!)),
                  RecipeStats(recipeModel.pricePerServing!,
                      recipeModel.readyInMinutes!),
                  SizedBox(height: 14),
                ],
              ),
              Positioned(
                top: 10,
                right: 10,
                child: FavoriteButtonOverlay(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
