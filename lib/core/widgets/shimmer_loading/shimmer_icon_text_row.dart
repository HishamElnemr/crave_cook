import 'package:flutter/material.dart';
import 'shimmer_text.dart';

class ShimmerIconTextRow extends StatelessWidget {
  const ShimmerIconTextRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        const ShimmerText(width: 60, height: 12),
        const SizedBox(width: 16),
        Container(
          width: 20,
          height: 20,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        const ShimmerText(width: 60, height: 12),
      ],
    );
  }
}
