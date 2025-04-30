import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';

class NetworkImageWidget extends StatelessWidget {
  const NetworkImageWidget({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
  });
  final String imageUrl;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: width ?? 140,
      height: height ?? 140,
      fit: BoxFit.cover,
      placeholder: (context, url) => Padding(
        padding: EdgeInsets.all(0),
        child: Center(
          child: CircularProgressIndicator(
            color: kPrimaryColor,
            strokeWidth: 2,
            backgroundColor: Colors.grey.shade200,
          ),
        ),
      ),
      errorWidget: (context, url, error) =>
          const Icon(Icons.error, color: Colors.red),
    );
  }
}
