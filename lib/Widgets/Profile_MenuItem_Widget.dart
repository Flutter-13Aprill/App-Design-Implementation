import 'package:flutter/material.dart';

class ProfileMenuitemWidget extends StatelessWidget {
  final IconData icon; // Icon for the menu item
  final Color color; // Background color of the icon
  final String label; // Text label for the menu item
  final VoidCallback onTap; // Callback for tap action

  // Constructor to initialize required fields
  const ProfileMenuitemWidget({
    super.key,
    required this.icon,
    required this.color,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // Executes the callback when tapped
      splashColor: Colors.white24, // Splash color effect on tap
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 14,
        ), // Padding around the item
        child: Row(
          children: [
            Container(
              width: 46, // Icon container width
              height: 46, // Icon container height
              decoration: BoxDecoration(
                color: color, // Set the icon background color
                borderRadius: BorderRadius.circular(
                  14,
                ), // Rounded corners for icon container
              ),
              child: Icon(
                icon,
                color: Colors.white,
              ), // Display the icon in white
            ),
            SizedBox(width: 16), // Space between icon and label
            Expanded(
              child: Text(
                label, // Display the label text
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ), // Label text styling
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white30,
              size: 16,
            ), // Arrow icon at the end
          ],
        ),
      ),
    );
  }
}
