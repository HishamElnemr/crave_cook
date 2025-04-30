import 'package:flutter/material.dart';
import 'package:recipe_app/core/widgets/shimmer_loading/loading_card.dart';

class ReasultLoadingListView extends StatelessWidget {
  const ReasultLoadingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: LoadingCard(
              isLoading: true, 
              imageUrl: 'https://example.com/image.png',
              title: 'Item $index',
            ),
          );
        },
      ),
    );
  }
}