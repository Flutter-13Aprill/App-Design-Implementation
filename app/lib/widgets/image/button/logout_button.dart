import 'package:app/extension/Screen/get_size_screen.dart';
import 'package:app/screen/login_screen.dart';
import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  // A StatelessWidget for creating a logout button.
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    // Method to display an alert dialog for confirming logout action.
    void showAlertDilog() {
      showDialog(
        context: context, // Pass the current context
        builder: (context) {
          // Build the dialog content.
          return AlertDialog(
            // Build the dialog content.
            contentPadding: EdgeInsets.all(60), // Set the title of the dialog.

            title: Text("do you want to log out?"),
            actions: [
              // Define the actions (buttons) for the dialog.
              TextButton(
                // A button to confirm logout.
                onPressed: () {
                  // Action to perform when "yes" is pressed.
                  // Navigate to the login screen, replacing the current route.
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text("yes "), // Text for the "yes" button.
              ),
              TextButton(
                // A button to cancel logout.
                onPressed: () {
                  Navigator.pop(context); // Close the dialog.
                },
                child: Text("no "), // Text for the "no" button.
              ),
            ],
          );
        },
      );
    }

    // Build the logout button.
    return MaterialButton(
      onPressed: () {
        // Call the showAlertDilog method when the button is pressed.
        showAlertDilog();
      },
      child: Container(
        // Use a Container for custom styling of the button.
        padding: EdgeInsets.only(
          top: context.getWidth() * 0.02,
        ), // Top padding relative to screen width.
        margin: EdgeInsets.only(left: 70), // Left margin of 70 pixels.
        width:
            context.getWidth() *
            .66, // width & Height relative to screen height.
        height: context.getWHeigth() * .052,
        decoration: BoxDecoration(
          color: Color(0xff16527F),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          // A button to confirm logout.
          textAlign: TextAlign.center,
          "Log Out",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
