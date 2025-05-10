// lib/Widgets/home_card_widget.dart
import 'package:app_design_implementation/Screen/Detail_Screen.dart';
import 'package:flutter/material.dart';

class HomeCardWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final double price;

  // Constructor accepting image path, title, description, and price
  const HomeCardWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to DetailScreen when tapped
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailScreen(
              title: title,
              description: description,
              imagePath: imagePath,
              price: price,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          // Gradient background for the card
          gradient: LinearGradient(
            colors: [
              Color(0xFFBFA0FF).withOpacity(0.1),
              Colors.white.withOpacity(0.05),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.deepPurpleAccent.withOpacity(0.15),
              blurRadius: 12,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display the image in the top section of the card
            ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(14),
              ),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            // Title of the card
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            // Description under the title
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                description,
                style: TextStyle(fontSize: 16, color: Colors.grey[300]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
