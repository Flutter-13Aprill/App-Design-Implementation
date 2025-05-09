import 'package:app/extension/Screen/get_size_screen.dart';
import 'package:flutter/material.dart';
//import 'package:fl_chart/fl_chart.dart';

class PrograssLearningChart extends StatelessWidget {
  Color color; // Assigns the controller to manage text input
  double width; // Width of the progress bar.
  PrograssLearningChart({super.key, required this.color, required this.width});

  @override
  Widget build(BuildContext context) {
    return Stack(
      // Stack widget to overlap the two containers.
      children: [
        Container(
          // Base container for the progress bar (the background).
          margin: EdgeInsets.all(
            16,
          ), // Margin around the container.  Provides spacing.
          width: context.getWidth() * .9,
          height: context.getWHeigth() * 0.03,
          decoration: BoxDecoration(
            // Styling for the base container.
            color: const Color.fromARGB(255, 195, 189, 188),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Positioned(
          // Positioned widget to place the progress bar at a specific location within the Stack.
          child: Container(
             // Container for the actual progress (the colored part).
            margin: EdgeInsets.all(16), // Match the margin of the base container.
            width: width,
            height: context.getWHeigth() * 0.03,// Height should match the base container.
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16),// Rounded corners to match the base.
            ),
          ),
        ),
      ],
    );
  }
}
