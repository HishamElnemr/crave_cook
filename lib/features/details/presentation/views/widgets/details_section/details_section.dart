import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/core/widgets/icon_details.dart';
import 'package:recipe_app/features/details/presentation/views/widgets/details_section/description_widget.dart';

class DetailsSection extends StatelessWidget {
  final String title;
  final String description;
  final double price;
  final int time;
  final int likes;
  final VoidCallback onTap;

  const DetailsSection({
    super.key,
    required this.title,
    required this.description,
    required this.price,
    required this.time,
    required this.likes,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.textStyle_20.copyWith(color: kPrimaryColor),
        ),
        const SizedBox(height: 12),
        _buildInfoRow(),
        const SizedBox(height: 12),
        DescriptionWidget(description: description),
        const SizedBox(height: 12),
        _buildActionButtons(),
      ],
    );
  }

  Widget _buildInfoRow() {
    return Row(
      children: [
        IconDetails(
          icon: Icons.access_time_rounded,
          text: '$time min',
          color: kPrimaryColor,
          textColor: kPrimaryColor,
          textSize: 16,
        ),
        const SizedBox(width: 15),
        IconDetails(
          icon: FontAwesomeIcons.thumbsUp,
          text: '$likes',
          color: kPrimaryColor,
          textColor: kPrimaryColor,
          textSize: 16,
        ),
      ],
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              padding: const EdgeInsets.symmetric(vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              'View Details',
              style: Styles.textStyle_14.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: kPrimaryColor,
              side: BorderSide(color: kPrimaryColor),
              padding: const EdgeInsets.symmetric(vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text('\$$price'),
          ),
        ),
      ],
    );
  }
}

