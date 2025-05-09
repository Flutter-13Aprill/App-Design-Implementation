import 'package:app/extension/Screen/get_size_screen.dart';
import 'package:flutter/material.dart';

/// A reusable widget to display an image at the bottom of the screen.
///
/// This widget adjusts its height based on:
/// - Screen width (via custom `getWHeigth()` extension)
/// - A boolean flag `isWelcom` which determines if the image should take 50% or ~71% of the screen width.
//

class ImageBottomPageScreen extends StatelessWidget {
  String imagePath; // Path to the asset image to be displayed
  double imageHeight = 0; // Path to the asset image to be displayed
  bool isWelcom; // Boolean flag to determine layout behavior
  // Boolean flag to determine layout behavior
  ImageBottomPageScreen({
    super.key,
    required this.imagePath,
    required this.isWelcom,
  });

  @override
  Widget build(BuildContext context) {
    // Set image height conditionally:
    // - If `isWelcom` is true => 50% of screen width
    // - Else => 71% of screen width

    imageHeight = context.getWHeigth();
    imageHeight =
        isWelcom
            ? imageHeight = context.getWHeigth() * .5
            : context.getWHeigth() * .71;
    return Container(
      alignment: Alignment.bottomCenter,// Align image to bottom center
      height: imageHeight,// Align image to bottom center
      width: context.getWHeigth(),// Load image from assets
      child: Image.asset(imagePath), // Make sure image fits within container
    );
  }
}
