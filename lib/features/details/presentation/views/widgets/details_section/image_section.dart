import 'package:flutter/material.dart';
import 'back_button_overlay.dart';
import '../../../../../../core/widgets/favorite_button_overlay.dart';
import 'package:recipe_app/core/widgets/network_image_widget.dart';

class ImageSection extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;

  const ImageSection({
    super.key,
    required this.imageUrl,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        NetworkImageWidget(imageUrl: imageUrl, width: width, height: height),
        const Positioned(top: 40, left: 20, child: BackButtonOverlay()),
        const Positioned(top: 40, right: 20, child: FavoriteButtonOverlay()),
      ],
    );
  }
}
