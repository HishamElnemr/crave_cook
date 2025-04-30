import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/core/widgets/network_image_widget.dart';
import 'package:recipe_app/features/home/data/models/recipe_model/recipe_model.dart';

class SuggestionListView extends StatelessWidget {
  final List<RecipeModel> suggestions;

  const SuggestionListView({
    super.key,
    required this.suggestions,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: suggestions.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(
                AppRouter.detailsView,
                extra: suggestions[index],
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: NetworkImageWidget(
                imageUrl: suggestions[index].image!,
                width: 130,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
