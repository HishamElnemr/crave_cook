import 'package:flutter/material.dart';
import 'package:recipe_app/core/widgets/shimmer_loading/loading_card.dart';

class RecipesLoading extends StatelessWidget {
  const RecipesLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        itemCount: 6,
        itemBuilder: (context, index) => const LoadingCard(isLoading: true),
      ),
    );
  }
}