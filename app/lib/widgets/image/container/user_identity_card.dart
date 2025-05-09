import 'package:app/extension/Screen/get_size_screen.dart';
import 'package:flutter/material.dart';

class UserIdentityCard extends StatelessWidget {
  const UserIdentityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // A row layout to arrange children horizontally.
      children: [
        Container(
          // Margin around the avatar container.
          margin: EdgeInsets.only(
            // Margin around the avatar container.
            left: context.getWidth() * .01, // Left margin, 1% of screen width.
            top:
                context.getWHeigth() *
                .002, // Top margin, 0.2% of screen height.
          ),
          width: context.getWidth() * .24, //  width of the container.
          height: context.getWHeigth() * .097, //  height of the container.
          child: CircleAvatar(
            // Circular avatar for the user's profile picture.
            backgroundColor: Color(0xffF0F0F0),
            foregroundImage: AssetImage("assets/images/13.png"),
          ),
        ),
        // Adds horizontal space between avatar and text.
        SizedBox(width: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              // Text widget for the user's name.
              "Bushra Aljuwair",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              // Style
              "Riyadh ",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ],
    );
  }
}
