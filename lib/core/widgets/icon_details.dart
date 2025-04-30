import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/styles.dart';

class IconDetails extends StatelessWidget {
  const IconDetails({
    super.key,
    required this.icon,
    required this.text,
    this.color,
    this.textColor, this.textSize,
  });
  final IconData icon;
  final String text;
  final double? textSize;
  final Color? color;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color ?? Colors.white,
          size: 20,
        ),
        const SizedBox(width: 5),
        Text(
          text,
          style: Styles.textStyle_16.copyWith(
            color: textColor ?? Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: textSize ?? 16,
          ),
        ),
      ],
    );
  }
}
