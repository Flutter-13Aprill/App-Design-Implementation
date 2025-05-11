import 'package:flutter/material.dart';

class AuthenticationTextfieldWidget extends StatelessWidget {

/// [AuthenticationTextfieldWidget] is a reusable text field component used in both the Log In and Sign Up screens.
///
/// It accepts the following parameters:
/// - [text]: A label that guides the user on what to enter.
/// - [isPassword]: If true, the text field obscures the input (e.g., for passwords).
  const AuthenticationTextfieldWidget({super.key,required this.text,required this.isPassword,});
  final String text;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorHeight: 14,
      cursorColor: Color(0xffAF8F6F),
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: text,
        labelStyle: Theme.of(context).textTheme.displaySmall,
        contentPadding: EdgeInsets.all(16),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 2, color: Color(0xffAF8F6F)),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 2, color: Color(0xffAF8F6F)),
        ),
      ),
    );
  }
}
