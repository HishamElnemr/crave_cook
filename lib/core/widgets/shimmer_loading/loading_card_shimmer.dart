import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'shimmer_image.dart';
import 'shimmer_text.dart';
import 'shimmer_icon_text_row.dart';

class LoadingCardShimmer extends StatelessWidget {
  const LoadingCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ShimmerImage(),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  ShimmerText(),
                  SizedBox(height: 8),
                  ShimmerIconTextRow(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
