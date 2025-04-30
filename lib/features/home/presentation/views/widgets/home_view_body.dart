import 'package:flutter/material.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/body_section.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/popular_widget/popular_grid_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: BodySection(
          ),
        ),
        const PopularGridView(),
      ],
    );
  }
}
