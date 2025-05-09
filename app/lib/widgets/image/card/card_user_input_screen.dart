import 'dart:ffi';

import 'package:app/extension/Screen/get_size_screen.dart';
import 'package:app/widgets/image/textfeild/textfeild_from_user_screen.dart';
import 'package:flutter/material.dart';

class CardUserInputScreen extends StatelessWidget {
    // A StatelessWidget for creating a card-based layout for user input.

  final Widget child;// The child widget to be displayed within the card.
  late double height; // The height of the card.
  String pageName; // An identifier for the page where this card is used.
  CardUserInputScreen({super.key, required this.child, required this.pageName});

  @override
  Widget build(BuildContext context) {
        // Determine the height of the card based on the pageName.
    switch (pageName) {
      case "LoginScreen":
        height = context.getWHeigth() * .5;// Height is 50% of screen height for LoginScreen.
        break;
      case "SignupScreen":
        height = context.getWHeigth() * .62; // Height is 62% of screen height for SignupScreen.
        break;
    }

      // Use a Container to provide margin and styling for the Card.
    return Container( // Add margin around the card, relative to screen width.
      margin: EdgeInsets.all(context.getWidth() * 0.05),
      width: context.getWidth() * 0.9,// Set the width of the card, 90% of screen width.
      height: height,// Set the height of the card, determined by pageName.
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(context.getWidth() * 0.24),
      ),
      child: Card( // Use a Card widget for the actual card appearance.
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),// Rounded corners for the Card.
        shadowColor: Colors.blueGrey,
        elevation: 5, // Set the shadow elevation.
        child: Padding(padding: const EdgeInsets.all(10.0), child: child),
      ),
    );
  }
}
