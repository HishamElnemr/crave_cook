import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/core/utils/styles.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textAlign: TextAlign.center,
          'Help your path to health goals with happiness',
          style: Styles.textStyle_20.copyWith(
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: MediaQuery.of(context).size.width * .8,
          height: 54,
          child: ElevatedButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.mainView);
            },
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(kPrimaryColor),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            child: Text(
              'Continue',
              style: Styles.textStyle_16.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
