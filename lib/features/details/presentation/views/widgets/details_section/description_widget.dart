import 'package:flutter/material.dart';
import 'package:recipe_app/constants.dart';

class DescriptionWidget extends StatefulWidget {
  const DescriptionWidget({
    super.key,
    required this.description,
  });

  final String description;

  @override
  DescriptionWidgetState createState() => DescriptionWidgetState();
}

class DescriptionWidgetState extends State<DescriptionWidget> {
  bool _isExpanded = false; 

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.description,
          maxLines:
              _isExpanded ? null : 6, 
          overflow: _isExpanded
              ? null
              : TextOverflow
                  .ellipsis, 
          style: TextStyle(
            fontSize: 16,
            color: kIconColor,
            fontWeight: FontWeight.w400,
            height: 1.38,
            wordSpacing: .5,
            letterSpacing: .1,
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded; 
            });
          },
          child: Text(
            _isExpanded
                ? 'View less'
                : 'View more', 
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
