import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/widget/profile/profile_options_widget.dart';

// Stateful widget representing the user's profile screen

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // Makes the profile screen scrollable if content overflows vertically

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40),

          // User profile avatar
          Center(
            child: SizedBox(
              height: 140,
              width: 140,
              child: CircleAvatar(
                backgroundImage: AssetImage("images/splash.png"),
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Change Profile",
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 15),
          ProfileOptionsWidget(),
        ],
      ),
    );
  }
}
