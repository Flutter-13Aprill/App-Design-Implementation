import 'dart:async';

import 'package:app/extension/Screen/get_size_screen.dart';
import 'package:app/widgets/image/image_bottom_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:app/screen/welcome_screen.dart';

class SecondOnboardingScreen extends StatefulWidget {
  const SecondOnboardingScreen({super.key});

  @override
  State<SecondOnboardingScreen> createState() => _SecondOnboardingScreen();
}

class _SecondOnboardingScreen extends State<SecondOnboardingScreen> {
  Timer? timer; // Timer to automatically navigate to the next screen.
  @override
  void initState() {
    super.initState();
    // Initialize the timer in initState.
    timer = Timer.periodic(Duration(seconds: 10), (timer) {
      // Timer that triggers after 10 seconds.
      Navigator.pushReplacement(
        // Navigate to the WelcomeScreen and replace the current route.
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200, // Set background color.
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
      ), // Set app bar background color.
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text(
            // Title text.
            "Free education for all ",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: context.getWHeigth() * .07),
          Text(
            // Description text
            "Master Any Language, Unlock Limitless Possibilities",
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 8),
          Text(
            // Description text.
            "Discover how easy learning a new language can be",
            style: TextStyle(fontSize: 14),
          ),
          // Custom image widget.
          ImageBottomPageScreen(
            imagePath: "assets/images/1.png",
            isWelcom: false,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    timer?.cancel(); // Cancel the timer in dispose to prevent memory leaks.
    super.dispose();
  }
}
