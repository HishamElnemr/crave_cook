import 'package:flutter/material.dart';
import 'loading_card_shimmer.dart';
import 'loaded_card_content.dart';

class LoadingCard extends StatelessWidget {
  const LoadingCard({
    super.key,
    this.isLoading = false,
    this.imageUrl,
    this.title,
  });

  final bool isLoading;
  final String? imageUrl;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[200],
      ),
      child: isLoading
          ? const LoadingCardShimmer()
          : LoadedCardContent(
              imageUrl: imageUrl,
              title: title,
            ),
    );
  }
}
