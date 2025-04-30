import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/core/widgets/icon_details.dart';
import 'package:recipe_app/core/widgets/network_image_widget.dart';

class SimpleRecipeResult extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double price;
  final int time;
  final VoidCallback onTap;

  const SimpleRecipeResult({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.time,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: kIconColor.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(1, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                _RecipeImage(imgUrl: imageUrl),
                const SizedBox(width: 16),
                _RecipeInfo(title: title, price: price, time: time),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: kPrimaryColor,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.arrow_right_alt,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RecipeImage extends StatelessWidget {
  const _RecipeImage({required this.imgUrl});
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: NetworkImageWidget(
        imageUrl: imgUrl,
        width: 100,
        height: 100,
      ),
    );
  }
}

class _RecipeInfo extends StatelessWidget {
  const _RecipeInfo({
    required this.title,
    required this.price,
    required this.time,
  });

  final String title;
  final double price;
  final int time;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 140,
          child: Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle_14.copyWith(
              color: kPrimaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            IconDetails(
              icon: Icons.attach_money,
              text: '$price',
              color: kIconColor,
              textColor: kIconColor,
              textSize: 16,
            ),
            const SizedBox(width: 20),
            IconDetails(
              icon: Icons.access_time_rounded,
              text: '$time',
              color: kIconColor,
              textColor: kIconColor,
              textSize: 16,
            ),
          ],
        ),
      ],
    );
  }
}
