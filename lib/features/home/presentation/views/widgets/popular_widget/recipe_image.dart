import 'package:flutter/material.dart';
import 'package:recipe_app/core/widgets/network_image_widget.dart';

class RecipeImage extends StatelessWidget {
  const RecipeImage(this.imageUrl, {super.key});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: NetworkImageWidget(
        imageUrl: imageUrl,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
