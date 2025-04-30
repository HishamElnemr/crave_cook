import 'package:flutter/material.dart';

class PopularLoadingWidget extends StatelessWidget {
  const PopularLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 12,
          width: double.infinity,
          color: Colors.white,
        ),
        const SizedBox(height: 4),
        Container(
          height: 12,
          width: MediaQuery.of(context).size.width * 0.4,
          color: Colors.white,
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 8),
            Container(
              height: 10,
              width: 40,
              color: Colors.white,
            ),
            const Spacer(),
            Container(
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 8),
            Container(
              height: 10,
              width: 40,
              color: Colors.white,
            ),
          ],
        ),
      ],
    );
  }
}
