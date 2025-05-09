import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:app/extension/Screen/get_size_screen.dart';

class ShimmerHomeScreen extends StatelessWidget {
  const ShimmerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor:
          Colors
              .grey, // Base color for the shimmer effect.  Typically the color that underlies the shining highlight.
      highlightColor: Color.fromARGB(
        255,
        214,
        211,
        184,
      ), // Highlight color for the shimmer effect.  The moving, brighter part
      child: Container(
        // Margins to position the container on the screen.
        margin: EdgeInsets.only(
          top: context.getWHeigth() * 0.01,
          bottom: context.getWHeigth() * 0.004,
          left: context.getWidth() * 0.02,
        ),
        width:
            context.getWidth() *
            .38, // Width of the container is 38% of the screen width.
        height:
            context.getWHeigth() *
            .32, // Height of the container is 32% of the screen height
        decoration: BoxDecoration(
          // Visual styling for the container
          color: Colors.grey,
          borderRadius: BorderRadius.circular(
            16,
          ), // Rounded corners for the container.
        ),

        // A Card widget, often used for displaying content.  In this case, it's a placeholder.
        child: Card(
          elevation: 5,
          color:
              Colors
                  .grey, // Color of the Card, should match the container color
          shadowColor:
              Colors
                  .grey
                  .shade400, // Color of the shadow.  Using a lighter shade of grey.
        ),
      ),
    );
  }
}
