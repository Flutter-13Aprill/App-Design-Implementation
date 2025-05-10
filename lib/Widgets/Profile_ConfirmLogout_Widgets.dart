import 'package:flutter/material.dart';

class ProfileConfirmLogoutWidgets extends StatelessWidget {
  final VoidCallback onLogout; // Callback for logout action

  // Constructor for ProfileConfirmlogoutWidgets, accepts onLogout function
  const ProfileConfirmLogoutWidgets({Key? key, required this.onLogout})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xFF2D2B40), // Dark background color for dialog
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ), // Rounded corners
      titlePadding: EdgeInsets.fromLTRB(24, 24, 24, 0), // Padding for title
      contentPadding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 12,
      ), // Padding for content
      title: Row(
        children: [
          Icon(Icons.logout, color: Colors.redAccent), // Logout icon
          SizedBox(width: 10), // Space between icon and text
          Text(
            'Logout',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ), // Title text
        ],
      ),
      content: Text(
        'Are you sure you want to logout?', // Content text asking for confirmation
        style: TextStyle(
          color: Colors.white70,
          fontSize: 16,
        ), // Style for content text
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context), // Cancel button action
          child: Text(
            'Cancel',
            style: TextStyle(color: Colors.grey),
          ), // Cancel text
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context); // Close dialog
            onLogout(); // Perform logout action
          },
          child: Text(
            'Logout',
            style: TextStyle(color: Colors.redAccent),
          ), // Logout button text
        ),
      ],
    );
  }
}
