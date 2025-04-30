import 'package:flutter/material.dart';
import 'package:recipe_app/features/splash/widgets/animated_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController slidingController;
  late AnimationController fadeController;
  late Animation<Offset> slidingAnimation;
  late Animation<double> fadeAnimation;
  bool isTextObserved = false;
  @override
  void initState() {
    super.initState();
    slidingController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    );

    slidingAnimation = Tween<Offset>(
      begin: const Offset(1, -2),
      end: const Offset(0, .5),
    ).animate(CurvedAnimation(
      parent: slidingController,
      curve: Curves.easeOut,
    ));

    fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    fadeAnimation = CurvedAnimation(
      parent: fadeController,
      curve: Curves.easeOut,
    );

    slidingController.forward().then((_) {
      Future.delayed(
          const Duration(
            milliseconds: 300,
          ), () {
        fadeController.forward().then((_) {
          setState(() {
            isTextObserved = true;
          });
        });
      });
    });
  }

  @override
  void dispose() {
    slidingController.dispose();
    fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SlideTransition(
            position: slidingAnimation,
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
          Transform.translate(
            offset: const Offset(0, 70),
            child: FadeTransition(
              opacity: fadeAnimation,
              child: Image.asset(
                'assets/images/logo_2.png',
              ),
            ),
          ),
          const Spacer(),
          isTextObserved ? const AnimatedText() : const SizedBox(),
          const Spacer(),
        ],
      ),
    );
  }
}
