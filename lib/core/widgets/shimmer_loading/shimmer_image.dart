import 'package:flutter/material.dart';

class ShimmerImage extends StatelessWidget {
  const ShimmerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
