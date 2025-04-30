import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 50,
            height: 50,
          ),
          Text(
            'CraveCook',
            style: Styles.textStyle_14.copyWith(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Icon(
            Icons.shopping_cart_outlined,
          ),
        ],
      ),
    );
  }
}
