import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';

class BackButtonOverlay extends StatelessWidget {
  const BackButtonOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: IconButton(
        icon: Icon(Icons.arrow_back, color: kPrimaryColor),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}
