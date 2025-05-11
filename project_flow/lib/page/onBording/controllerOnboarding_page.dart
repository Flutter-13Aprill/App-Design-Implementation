import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:project_flow/page/logIn/login_page.dart';
import 'package:project_flow/page/signUp/signup_page.dart';
import 'package:project_flow/page/widgets/onboarding/OnboardingPage.dart';

class ControlleronboardingPage extends StatelessWidget {
  const ControlleronboardingPage({super.key});
  final Color kDarkBlueColor = const Color(0xFF053149);
  final Color titleColor = const Color(0xFF756EF3);

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Login',
      onFinish: () {
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => const LoginPage()),
        );
      },

      finishButtonStyle: FinishButtonStyle(backgroundColor: titleColor),
      skipTextButton: Text(
        'Skip',
        style: TextStyle(
          fontSize: 16,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Text(
        'Sign up',
        style: TextStyle(
          fontSize: 16,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () {
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => const SignupPage()),
        );
      },
      controllerColor: kDarkBlueColor,
      totalPage: 4,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      centerBackground: true,
      
      background: [
        Image.asset(
          'assets/images/onBording/onbording1.png',
          width: 400,
        ),

        Image.asset(
          'assets/images/onBording/onbording2.png',
          height: 400,
          width: 400,
          
        ),

        Image.asset(
          'assets/images/onBording/onbording3.png',
          height: 400,
          width: 400,
        ),

        Image.asset(
          'assets/images/onBording/onbording4.png',
          height: 400,
          width: 400,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        OnboardingPage(
          title: "Building Better Work",
          subtitle:
              "Create a unique emotional story that describes better than words",
          titleColor: titleColor,
        ),
        OnboardingPage(
          title: "Task Management",
          subtitle: "Let's create a space for your workflows.",
          titleColor: titleColor,
        ),
        OnboardingPage(
          title: "Task Management",
          subtitle: "Work more Structured and Organized 👌",
          titleColor: titleColor,
        ),
        OnboardingPage(
          title: "Task Management",
          subtitle: "Manage your Tasks quickly for Results✌",
          titleColor: titleColor,
        ),
      ],
    );
  }
}
