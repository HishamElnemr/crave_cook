import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/styles.dart';

class ImageWithLabel extends StatelessWidget {
  final String imageAsset;
  final String label;

  const ImageWithLabel({
    super.key,
    required this.imageAsset,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              imageAsset,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                label,
                style: Styles.textStyle_14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
