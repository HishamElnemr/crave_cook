import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/styles.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.category,
    required this.bgColor,
    required this.textColor,
  });
  final String category;
  final Color bgColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 9,
        horizontal: 24,
      ),
      height: 41,
      constraints: BoxConstraints(minWidth: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: bgColor,
      ),
      child: Text(
        category,
        style: Styles.textStyle_16.copyWith(
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
    );
  }
}
