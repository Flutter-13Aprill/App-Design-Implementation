import 'package:flutter/material.dart';

// first page in the "onboarding_screen" PageView
class OnboardinFirst extends StatelessWidget {
  const OnboardinFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/welcome_intro_title.png"),
          Image.asset("assets/images/intro_pizza.png"),
        ],
      ),
    );
  }
}
