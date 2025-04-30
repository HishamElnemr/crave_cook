import 'package:flutter/material.dart';

class ShimmerText extends StatelessWidget {
  const ShimmerText(
      {super.key, this.width = double.infinity, this.height = 20});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width,
          height: height * 1.5,
          color: Colors.white,
        ),
      ],
    );
  }
}
