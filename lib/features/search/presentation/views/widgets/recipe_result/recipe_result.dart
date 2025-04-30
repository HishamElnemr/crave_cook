import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';
import 'package:recipe_app/features/search/presentation/views/widgets/recipe_result/recipe_info.dart';
import 'package:recipe_app/features/search/presentation/views/widgets/recipe_result/recipe_result_image.dart';

class RecipeResult extends StatelessWidget {
  final RecipeModel recipeModel;
  final void Function() onTap;

  const RecipeResult({
    super.key,
    required this.recipeModel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          height: 120,        
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: kIconColor.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(1, 3),
              ),
            ],
          ),
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              RecipeResultImage(imageUrl: recipeModel.image!),
              const SizedBox(width: 16),
              RecipeInfo(
                title: recipeModel.title!,
                price: recipeModel.pricePerServing!,
                time: recipeModel.readyInMinutes!,
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: kPrimaryColor,
                ),
                padding: const EdgeInsets.all(5),
                child: const Icon(Icons.arrow_right_alt, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
