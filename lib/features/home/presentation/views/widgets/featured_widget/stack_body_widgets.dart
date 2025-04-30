import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/core/widgets/icon_details.dart';
import 'package:recipe_app/core/widgets/network_image_widget.dart';

class DishImage extends StatelessWidget {
  const DishImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: NetworkImageWidget(imageUrl: imageUrl, width: 125, height: 130),
    );
  }
}

class DishInfo extends StatelessWidget {
  const DishInfo({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        Text(
          title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle_16.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}

class DishStats extends StatelessWidget {
  const DishStats({
    super.key,
    required this.likes,
    required this.time,
  });

  final int likes;
  final int time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconDetails(
          icon: Icons.favorite,
          text: '$likes',
          color: Colors.red,
        ),
        const SizedBox(width: 20),
        IconDetails(
          icon: Icons.access_time_rounded,
          text: '$time',
          color: kPrimaryColor,
        ),
      ],
    );
  }
}

class DishSource extends StatelessWidget {
  const DishSource({super.key, required this.source});
  final String source;
  @override
  Widget build(BuildContext context) {
    return Text(
      source,
      style: Styles.textStyle_14.copyWith(
        color: const Color.fromARGB(136, 255, 255, 255),
      ),
    );
  }
}
