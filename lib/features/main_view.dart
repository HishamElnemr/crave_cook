import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/core/widgets/custom_navbar.dart';

class MainView extends StatefulWidget {
  final Widget child;

  const MainView({super.key, required this.child});

  @override
  MainViewState createState() => MainViewState();
}

class MainViewState extends State<MainView> {
  int _currentIndex = 0;

  final List<String> _routes = [
    AppRouter.mainView,
    AppRouter.searchView,
    '',
    AppRouter.categoryView,
    AppRouter.cartView,
  ];

  void _onItemTapped(int index) {
    if (index == 2) {
      return;
    }

    setState(() {
      _currentIndex = index;
    });

    final route = _routes[index];
    if (route.isNotEmpty) {
      context.go(route);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: CustomNavbar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {},
          backgroundColor: kPrimaryColor,
          elevation: 0,
          highlightElevation: 0,
          mini: false,
          child: Image.asset(
            'assets/images/chef-hat-with-mustache.png',
            width: 35,
            height: 35,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
