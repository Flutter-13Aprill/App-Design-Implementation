import 'package:app/extension/Screen/get_size_screen.dart';
import 'package:flutter/material.dart';

class ContainerEnglishLesson extends StatelessWidget {
  Color color;  // The background color of the container.
  String title;// The title of the lesson.
  Icon icon;// The icon to display alongside the title.
  Widget describtion;// The description or content of the lesson.
    // Constructor for the ContainerEnglishLesson class.

  ContainerEnglishLesson({super.key, required this.color, required this.title, required this.icon,required this.describtion});

  @override
  Widget build(BuildContext context) {
    // Build the container for the English lesson.
    return Container(
       margin: EdgeInsets.all(10), // Add margin around the container.
      width: context.getWHeigth(),// Set the width to screen height.
      height: context.getWHeigth() * .20,// Set the height to 20% of screen height.
      decoration: BoxDecoration( // Define the container's appearance.
        color: color,// Use the provided background color
        borderRadius: BorderRadius.circular(30),// Apply rounded corners.
      ),
      child: ListTile(
        title: Text(// Use a ListTile for a consistent layout.
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // Style the title.
        ),// Display the icon.
        leading: icon,
        subtitle: describtion,// Display the description.
      ),
    );
  }
}
