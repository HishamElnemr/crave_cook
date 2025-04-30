import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';

class IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconWithText({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: kIconColor),
        const SizedBox(width: 4),
        Text(
          text,
          style: TextStyle(
            color: kIconColor,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
