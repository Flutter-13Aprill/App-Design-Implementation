import 'package:app/extension/Screen/get_size_screen.dart';
import 'package:flutter/material.dart';

class FirstOnboarding extends StatefulWidget {
  const FirstOnboarding({super.key});

  @override
  State<FirstOnboarding> createState() => _FirstOnboardingState();
}

class _FirstOnboardingState extends State<FirstOnboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set background color of the scaffold
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
      ), // Set background color of the app bar

      body: Column(
        children: [
          Container(
            // Container for the image and text
            alignment: Alignment.centerRight, // Align content to the right
            margin: EdgeInsets.only(left: context.getWHeigth() * 0.02),
            width: context.getWHeigth() * 0.5, // Width based on screen heigh
            height: context.getWHeigth() * .6, // Height based on screen height
            child: Stack(
              // Use a stack to overlap widgets
              children: [
                // Image widget to display the onboarding image
                Image.asset(
                  "assets/images/0.png",
                  fit: BoxFit.fill,
                ), // Make the image fill the container
                Positioned(
                  // Positioned widget to place the text
                  bottom:
                      context.getWHeigth() * 0.13, // Position from the bottom
                  left: context.getWHeigth() * 0.1, // Position from the left
                  child: Text(
                    "NovaLingua", // Text to display
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ), // Font size & weight of the text
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
