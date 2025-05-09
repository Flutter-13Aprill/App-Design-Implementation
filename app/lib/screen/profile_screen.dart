import 'package:app/extension/Screen/get_size_screen.dart';
import 'package:app/widgets/charts/prograss_learning_chart.dart';
import 'package:app/widgets/image/button/button_screen.dart';
import 'package:app/widgets/image/button/logout_button.dart';
import 'package:app/widgets/image/container/user_identity_card.dart';
import 'package:app/widgets/image/textfeild/prograss_learning_chart.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F0F0), // Match the background color
      appBar: AppBar(
        // Main container for the screen
        centerTitle: true,
        backgroundColor: Color(0xffF0F0F0),
        title: Text("profile"),
      ),
      body: Column(
        // Main body of the screen
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserIdentityCard(), // Custom widget displaying user identity (e.g., profile picture, name)
          Container(
            margin: EdgeInsets.only(top: 35, left: 15, bottom: 20),
            child: Text(
              // Section title for "Languages"
              "languages:", // Title text
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            width:
                context.getWidth() *
                .5, // Responsive width: 50% of screen width
            height:
                context.getWHeigth() * .1, // Responsive height: 10% of screen

            child: Image.asset(
              "assets/images/14.png",
            ), // Language-related image
          ),

          Container(
            // Image container for language representation
            margin: EdgeInsets.only(left: 10),
            child: Text(
              // Section title for "My Progress"
              "My Progress",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),

          Center(
            // Progress pie chart (centered in the screen)
            child: LearningPieChart(
              chineseProgress: .70,
              italianProgress: .40,
            ), // 70% progress for Chinese & 40% progress for Italian
          ),
          ListTile(
            // Legend for "Chinese" progress
            leading: Icon(Icons.square, size: 15, color: Colors.red.shade300),
            title: Text("chinese"),
          ),
          ListTile(
            // Legend for "Italian" progress
            leading: Icon(
              Icons.square,
              size: 15,
              color: Color.fromARGB(180, 105, 88, 161),
            ),
            title: Text("italy"),
          ),

          LogoutButton(), // Custom logout button (functionality likely defined in another file)
        ],
      ),
    );
  }
}
