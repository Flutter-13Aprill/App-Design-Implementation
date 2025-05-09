import 'package:flutter/material.dart';
/// A reusable TextField widget for user input forms.
/// 
/// This widget provides a customizable text field with:
/// - Label
/// - Hint text
/// - Prefix icon
/// - Password toggle (optional)
/// 
/// 
class TextfeildFromUserScreen extends StatelessWidget {
    // Variables to hold the properties passed to the widget

  final controller;// TextEditingController to control the text field
  final label;// TextEditingController to control the text field
  final hintText;// TextEditingController to control the text field
  final Icon iconTextFeild;// TextEditingController to control the text field
  bool isPassword; // Boolean to determine if it's a password field

  /// Constructor to initialize all required fields
   TextfeildFromUserScreen({
    super.key,
  required  this.controller,
   required this.label,
   required this.hintText,
   required this.isPassword,
   required this.iconTextFeild
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),// Adds margin around the text field
      child: TextField(
          obscureText: isPassword,// Adds margin around the text field
        decoration: InputDecoration( // Displays the icon at the start of the field
          prefixIcon:  iconTextFeild,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),// Rounded corners for the border
          label: Text(label),// Shows the label & hintText above the field when focused or filled
          hintText: hintText,
        ),
        controller: controller,// Assigns the controller to manage text input
      ),
    );
  }
}
