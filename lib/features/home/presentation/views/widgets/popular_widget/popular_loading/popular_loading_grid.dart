import 'package:flutter/material.dart';
import 'package:recipe_app/features/home/presentation/views/widgets/popular_widget/popular_loading/popular_loading_widget.dart';
import 'package:shimmer/shimmer.dart';

class PopularLoadingGrid extends StatelessWidget {
  const PopularLoadingGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, 
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.7, 
      ),
      itemCount: 6, 
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: PopularLoadingWidget(),
        );
      },
    );
  }
}

