import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recipe_app/constants.dart';

class CustomNavbar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomNavbar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
      child: Container(
        decoration: BoxDecoration(),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: kPrimaryColor,
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(FontAwesomeIcons.home),
                color: currentIndex == 0 ? kSecondaryColor : Colors.white,
                onPressed: () => onTap(0),
              ),
              IconButton(
                icon: const Icon(FontAwesomeIcons.magnifyingGlass),
                color: currentIndex == 1 ? kSecondaryColor : Colors.white,
                onPressed: () => onTap(1),
              ),
              const SizedBox(width: 40),
              IconButton(
                icon: const Icon(Icons.category_rounded),
                color: currentIndex == 3 ? kSecondaryColor : Colors.white,
                onPressed: () => onTap(3),
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart_outlined),
                color: currentIndex == 4 ? kSecondaryColor : Colors.white,
                onPressed: () => onTap(4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
