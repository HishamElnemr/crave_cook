import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/core/widgets/icon_details.dart';

class RecipeStats extends StatelessWidget {
  const RecipeStats(this.price, this.time, {super.key});
  final double price;
  final int time;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconDetails(
          icon: FontAwesomeIcons.moneyBill1Wave,
          text: '$price',
          color: kIconColor,
          textColor: kIconColor,
          textSize: 14,
        ),
        IconDetails(
          icon: Icons.access_time_rounded,
          text: '$time',
          color: kIconColor,
          textColor: kIconColor,
          textSize: 14,
        ),
      ],
    );
  }
}
