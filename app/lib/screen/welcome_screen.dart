import 'package:app/extension/Screen/get_size_screen.dart';
 import 'package:app/widgets/image/button/button_screen.dart';
import 'package:app/widgets/image/image_bottom_page_screen.dart';
import 'package:app/widgets/tab_bar/login_signup_tabbar.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
//WelcomeScreen for the ap
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(backgroundColor: Colors.grey.shade200),
      body: Column(
        children: [  // Display a welcome message.
          Text(
            "Welcome to the World of Languages ",
            style: TextStyle(
              fontSize: context.getWidth() * .033,
              fontWeight: FontWeight.w600,
            ),
          ),

          Text(// Display a secondary message.
            "Journey Starts Now. Let's embark\non this learning  experience together.",
          ),
            // Use a custom widget to display an image.
          ImageBottomPageScreen(// Path to the image asset
            imagePath: "assets/images/3.png",
            isWelcom: true, // Flag indicating if this is the welcome screen.
          ),

          ButtonScreen(
            pageName: "WelcomeScreen",// Identifier for this screen.
            pageToGo: LoginSignupTabBar(), // Screen to navigate to when the button is pressed.
            title: "lets start",// Text displayed on the button.
          ),
        ],
      ),
    );
  }
}
