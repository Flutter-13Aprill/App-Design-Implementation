import 'package:app/screen/first_onboarding_screen.dart';
import 'package:app/screen/second_onboarding_screen.dart';
import 'package:flutter/material.dart';

class PageviewScreen extends StatefulWidget {
  const PageviewScreen({super.key});

  @override
  State<PageviewScreen> createState() => _PageviewScreenState();
}

class _PageviewScreenState extends State<PageviewScreen> {
  // Controller for the PageView widget, allowing programmatic control of page transitions.
  final pageController = PageController();
  // List of widgets to be displayed as individual pages in the PageView.
  List<Widget> pages = [FirstOnboarding(), SecondOnboardingScreen()];
  @override
  void initState() {
    super.initState();
    // initState is called only once when the widget is created.
  }

  @override
  Widget build(BuildContext context) {
    // Assign the PageController to control the page viewing behavior.
    // Provide the list of widgets that will be displayed as pages.
    return PageView(controller: pageController, children: pages);
  }
}
