import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/features/search/presentation/views/widgets/recipe_result/icon_with_text.dart';

class RecipeInfo extends StatelessWidget {
  final String title;
  final double price;
  final int time;

  const RecipeInfo({
    super.key,
    required this.title,
    required this.price,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle_14.copyWith(
              color: kPrimaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              IconWithText(
                icon: Icons.attach_money,
                text: '$price',
              ),
              const SizedBox(width: 12),
              IconWithText(
                icon: Icons.access_time_rounded,
                text: '$time',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
