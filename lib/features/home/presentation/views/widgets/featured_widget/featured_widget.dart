import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/featured_widget/stack_body.dart';


class FeaturedWidget extends StatelessWidget {
  const FeaturedWidget({super.key, required this.recipeModel, required this.onTap});
  final RecipeModel recipeModel;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        width: 270,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(50),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.topRight,
            colors: [kThirdColor, kSecondaryColor],
          ),
        ),
        child: SteckBody(recipeModel: recipeModel),
      ),
    );
  }
}


