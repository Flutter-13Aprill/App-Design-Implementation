import 'package:app_design/screens/onboarding_screen.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => OnboardingScreen()),
        );
      },

      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/splash.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 200),
                child: Text(
                  '''Help your path to health
    goals with happiness''',
                  style: TextStyle(
                    fontSize: 24,
                    color: const Color.fromARGB(255, 252, 135, 85),
                    fontWeight: FontWeight.bold,

                    shadows: [
                      Shadow(
                        blurRadius: 10,
                        color: const Color.fromARGB(143, 0, 0, 0),
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
