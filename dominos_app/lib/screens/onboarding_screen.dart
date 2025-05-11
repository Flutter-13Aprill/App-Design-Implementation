import 'package:dominos_app/screens/login_screen.dart';
import 'package:dominos_app/screens/onboarding_screens/onboarding_first_page.dart';
import 'package:dominos_app/widgets/colors/dominos_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onboarding_screens/onboarding_second_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageViewController =
      PageController(); // initalizing the "pageViewController"
  int pageNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        PageView( // Creating the PageView
          controller: pageViewController,
          children: const [ //List of the pages for the  "onBoarding_screen" PageView
            OnboardinFirst(),
            OnboardinSecond()
          ], 
        ),
        Container( // The container for the PageView Indicator
            alignment: const Alignment(0, 0.58),
            child: SmoothPageIndicator(
              controller: pageViewController,
              count: 2,
              effect: SlideEffect(
                  dotColor: dominosBlue, activeDotColor: dominosRed),
            )),
        Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: InkWell( // The button to procced with the onBoarding and navigating to "login_screen"
              onTap: () {
                pageNum == 1
                    ? Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()))
                    : pageViewController.animateToPage(pageNum += 1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
              },
              child: Container(
                width: 70,
                height: 70,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: dominosBlue,
                    borderRadius: BorderRadius.circular(15)),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
