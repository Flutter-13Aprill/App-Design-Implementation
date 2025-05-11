import 'package:flutter/material.dart';
import 'package:shopmate/screens/bottom_navigation.dart';
import 'package:shopmate/widgets/socialmedia_login.dart';
import 'package:shopmate/widgets/text_field_thema.dart';

class SignUp extends StatelessWidget {
  /// This widget represents the sign up screen of the app.
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    // Controllers for managing the state of the text fields
    TextEditingController emailField = TextEditingController();
    TextEditingController passwordField = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 8,
        children: [
          SizedBox(height: 8),
          // TextField for entering email
          TextFieldThema(
            textController: emailField,
            textHint: "Enter your email",
            textLabel: "Email",
          ),

          // TextField for entering password
          TextFieldThema(
            textController: passwordField,
            textHint: "Enter your password",
            textLabel: "Password",
          ),

          // TextField for confirming password
          TextFieldThema(
            textController: passwordField,
            textHint: "Enter your password",
            textLabel: "Confirm Password",
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
