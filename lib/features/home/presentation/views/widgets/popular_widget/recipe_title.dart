import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/core/utils/styles.dart';

class RecipeTitle extends StatelessWidget {
  const RecipeTitle(this.title, {super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: Styles.textStyle_14.copyWith(
        color: kPrimaryColor,
        fontWeight: FontWeight.w400,
        wordSpacing: 1,
        letterSpacing: .1,
      ),
    );
  }
}
