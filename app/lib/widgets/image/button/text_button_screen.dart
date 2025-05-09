import 'package:flutter/material.dart';

class TextButtonScreen extends StatelessWidget {
  // Class representing a custom text button.
  Color color; // The color of the button text.
  String title; // The text displayed on the button.
  Widget? pageToGo; // The page to navigate to when the button is pressed (optional).
  
  // Constructor for the TextButtonScreen class.
  TextButtonScreen({
    super.key,
    required this.color,
    required this.title,
    this.pageToGo,
  });

  @override
  Widget build(BuildContext context) {
    // Build the text button.
    return TextButton(
      onPressed: () {
         // Define the action when the button is pressed.
        if (pageToGo != null)
          Navigator.push(
            context, // Navigate to the specified page.
            MaterialPageRoute(builder: (context) => pageToGo!),// Use MaterialPageRoute for navigation.
          );
      },// If pageToGo is null, the button does nothing.
      child: Text(title, style: TextStyle(color: color)),
    );
  }
}
