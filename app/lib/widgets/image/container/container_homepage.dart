import 'package:app/extension/Screen/get_size_screen.dart';
import 'package:flutter/material.dart';

class ContainerHomepage extends StatelessWidget {
  Color color; // Color for the container's background.
  String? iamePath;// Optional path to an image.
  String bookPath;// Path to a book image.
  String lessonTitle;// Title of the lesson.
  //constractur
  ContainerHomepage({
    super.key,
    required this.lessonTitle,
    required this.color,
    this.iamePath,
    required this.bookPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(// Define margins around the container.
      margin: EdgeInsets.only(
        top: context.getWHeigth() * 0.01,// Width of the container.
        bottom: context.getWHeigth() * 0.004,// Height of the container
        left: context.getWidth() * 0.02,
      ),
       // BoxDecoration for styling the container
      width: context.getWidth() * .38,
      height: context.getWHeigth() * .32,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Card( // Use a Card widget.
        elevation: 5,// Add elevation for a shadow.
        color: color,// Card color matches container color.
        shadowColor: Colors.grey.shade400,
 // Column to arrange children vertically.
        child: Column(
          children: [// Add some space at the top.
            SizedBox(height: 10),
            Text( // Display the lesson title.
              lessonTitle,
              style: TextStyle(
                fontSize: context.getWHeigth() * 0.02,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              // Container to hold the image.
              width: context.getWHeigth() * 0.100,// Width of the image container.
              height: context.getWHeigth() * .120,// Height of the image container.
              // Display image if iamePath is not null. Otherwise, display an empty Text widget.
              child: iamePath != null ? Image.asset(iamePath!) : Text(""),
            ),
            // Display a fixed image from assets.
            Image.asset("assets/images/12.png"),
            // Container for book image with fixed height.
            Container(height: 100, child: Image.asset(bookPath)),
          ],
        ),
      ),
    );
  }
}
