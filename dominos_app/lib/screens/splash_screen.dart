import 'package:dominos_app/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

// "SplashScreen" the inital screen of the application provided with a loading animation to insight the user of the loading process
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController indicatorController; //initalizing the "progressBarIndicator"

  //initalizing the "progressBarIndicator" with the some modification for more accuracy and a "Rule" to Navigate to "OnBoardingScreen"
  @override
  void initState() {
    indicatorController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5))
          ..addListener(() {
            setState(() {
              if (double.parse(indicatorController.value.toStringAsFixed(2)) ==
                  0.99) {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OnBoardingScreen()));
              }
            });
          });
    indicatorController.repeat();

    super.initState();
  }

  // Dispose of the controller after the splash screen
  @override
  void dispose() {
    indicatorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                height: 450,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/Domino's_Pizza_Logo.png",
                    ),
                    const SizedBox(height: 32),
                    SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        height: 5,
                        child: LinearProgressIndicator(
                          value: indicatorController.value,
                          color: Colors.red,
                        ))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
