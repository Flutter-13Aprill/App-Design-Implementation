import 'package:flutter/material.dart';
import 'package:shopmate/screens/bottom_navigation.dart';
import 'package:shopmate/widgets/Socialmedia_login.dart';
import 'package:shopmate/widgets/text_field_thema.dart';

class LogIn extends StatelessWidget {
  /// This widget represents the login screen of the app.
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    // Controllers for managing the state of the text fields
    TextEditingController emailField = TextEditingController();
    TextEditingController passwordField = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 16,
        children: [
          SizedBox(height: 8),
          // TextField for email
          TextFieldThema(
            textController: emailField,
            textHint: "Enter your email",
            textLabel: "Email",
          ),

          // TextField for password
          TextFieldThema(
            textController: passwordField,
            textHint: "Enter your password",
            textLabel: "Password",
          ),

          // ElevatedButton to navigate to the next screen
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => BottomNavigation()),
              );
            },
            child: Text(
              'Next',
              style: TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          // TextButton for handling "Forgot Password?" functionality
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
          ),

          // Social media login options
          Text(
            "Or",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          SocialmediaLogin(),
        ],
      ),
    );
  }
}
