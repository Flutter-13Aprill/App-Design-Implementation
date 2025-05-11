import 'package:flutter/material.dart';
import 'package:residence_app/screens/chats_screen.dart';
import 'package:residence_app/screens/favorit_screen.dart';
import 'package:residence_app/screens/home_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int selectedIndex = 1;

  // List of screens to display based on selected index

  final List<Widget> pages = [FavoritScreen(), HomeScreen(), ChatsScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // Display the currently selected screen
      body: Center(child: pages.elementAt(selectedIndex)),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1)),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,

              // Space between icon and text
              gap: 8,
              activeColor: Color(0xff6a7d4f),
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Color(0xff746c64),
              tabs: [
                GButton(icon: Icons.favorite, text: 'Likes'),
                GButton(icon: Icons.home, text: 'Home'),
                GButton(icon: Icons.chat, text: 'Chat'),
              ],

              // Update the selected index when a tab is tapped
              selectedIndex: selectedIndex,
              onTabChange: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
