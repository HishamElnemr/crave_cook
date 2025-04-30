import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/popular_widget/category_list_view.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/featured_widget/featured_list_view.dart';

class BodySection extends StatelessWidget {
  const BodySection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Featured',
            style: Styles.textStyle_20.copyWith(
              color: kPrimaryColor,
            ),
          ),
        ),
        const SizedBox(height: 12),
        FeaturedListView(),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Categories',
            style: Styles.textStyle_20.copyWith(
              color: kPrimaryColor,
            ),
          ),
        ),
        const SizedBox(height: 12),
        const CategoryListView(),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Popular Recipes',
            style: Styles.textStyle_20.copyWith(
              color: kPrimaryColor,
            ),
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
