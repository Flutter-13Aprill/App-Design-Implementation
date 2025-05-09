import 'package:app/extension/Screen/get_size_screen.dart';
import 'package:app/screen/login_screen.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
    // Class representing a custom button.
  final Widget pageToGo; // The page to navigate to when the button is pressed.
  final title; // The text displayed on the button.  Can be of any type
  late double width;// The width of the button.
  late double height; // The height of the button.
  late double fontSize;// The font size of the button text.
  double borderRadius = 16; // The border radius of the button.
  late double margin;// The margin around the button.
  String pageName; // An identifier for the page where the button is used.

  // Constructor for the ButtonScreen class.
  ButtonScreen({
    super.key,
    required this.pageToGo,
    required this.pageName,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    // Determine button dimensions and styles based on the pageName.
    switch (pageName) {
      case "WelcomeScreen":
        width = context.getWHeigth() * .5;// Width is 50% of screen height.
        height = context.getWHeigth() * 0.07;// Height is 7% of screen height
        fontSize = context.getWidth() * 0.06;// Font size is 6% of screen width.
        borderRadius = 40;// Margin is 4% of screen height.

        margin = context.getWHeigth() * .04;
        break;
      case "LoginScreen":
        width = context.getWHeigth() * .45;
        height = context.getWHeigth() * .07;
        fontSize = context.getWidth() * 0.05;
        margin = context.getWHeigth() * .012;

        break;
    }

    return MaterialButton(
      // Use MaterialButton for a tappable button with visual effects.
      color: Color(0xff16527F),// Set the button color
      onPressed: () {
        // Define the action when the button is pressed.
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => pageToGo),
        );
      },
      child: Container(// Set vertical margins.
         margin: EdgeInsets.only(top: margin / 2, bottom: margin / 2),
        width: width, // Set the width of the container.
        height: height * .7,// Set the height of the container.
        decoration: BoxDecoration(    // Define the container's appearance.
          color: Color(0xff16527F),// Match the button color.
          borderRadius: BorderRadius.circular(borderRadius),// Apply the border radius.
        ),
        child: Text(// Display the button text.
          textAlign: TextAlign.center,// Center the text horizontally.
          title, // Use the provided title.
          style: TextStyle(
            color: Colors.white,// Set text color to white.
            fontSize: fontSize,// Use the calculated font size.
            fontWeight: FontWeight.w400,// Use the calculated font size.
          ),
        ),
      ),
    );
  }
}
