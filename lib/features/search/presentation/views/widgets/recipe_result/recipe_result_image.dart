import 'package:flutter/material.dart';
import 'package:recipe_app/core/widgets/network_image_widget.dart';

class RecipeResultImage extends StatelessWidget {
  final String imageUrl;

  const RecipeResultImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: NetworkImageWidget(
        imageUrl: imageUrl,
        width: 100,
        height: 100,
      ),
    );
  }
}
