import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recipe_app/constants.dart';

class FavoriteButtonOverlay extends StatefulWidget {
  const FavoriteButtonOverlay({super.key});

  @override
  State<FavoriteButtonOverlay> createState() => _FavoriteButtonOverlayState();
}

class _FavoriteButtonOverlayState extends State<FavoriteButtonOverlay> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavorited = !isFavorited;
        });
      },
      child: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Center(
          child: Icon(
            FontAwesomeIcons.solidHeart,
            color: isFavorited ? Colors.red : kIconColor,
          ),
        ),
      ),
    );
  }
}
