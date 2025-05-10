import 'package:flutter/material.dart';

class TemplateWidget extends StatelessWidget {
  final String imagePath; // Path to the image for the template
  final String title; // Title for the template

  // Constructor to initialize the widget with image and title
  const TemplateWidget({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start, // Align elements at the start
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12), // Rounded corners for the image
          child: Image.asset(
            imagePath, // Image displayed from the provided path
            width: 100, // Fixed width for the image
            height: 100, // Fixed height for the image
            fit: BoxFit.fill, // Image fills the available space
          ),
        ),
        SizedBox(width: 16), // Space between image and text
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
            children: [
              Text(
                title, // Display the title of the template
                style: TextStyle(
                  color: Colors.white, // Text color
                  fontSize: 20, // Font size for the title
                  fontWeight: FontWeight.w600, // Bold text style
                ),
              ),
              SizedBox(height: 25), // Space before the button
              ElevatedButton(
                onPressed: () {}, // Placeholder for button action
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFBFA0FF), // Background color for the button
                  foregroundColor: Colors.white, // Text color for the button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners for the button
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), // Padding inside the button
                  elevation: 5, // Shadow effect for the button
                ),
                child: Text('Download'), // Button text
              ),
            ],
          ),
        ),
      ],
    );
  }
}
