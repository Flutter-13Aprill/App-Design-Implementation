import 'package:app/screen/home_screen.dart';
import 'package:app/screen/profile_screen.dart';
import 'package:flutter/material.dart';

class Bottomnavigationbar extends StatefulWidget {
  const Bottomnavigationbar({super.key});

  @override
  State<Bottomnavigationbar> createState() => _BottomnavigationbarState();
}

class _BottomnavigationbarState extends State<Bottomnavigationbar> {
  // Index to track the currently selected tab in the bottom navigation bar.
  int currntIndex = 0;
  List<Widget> pags = [
    HomeScreen(),
    ProfileScreen(),
  ]; // List of widgets to display based on the selected tab index.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The body of the Scaffold will display the widget corresponding to the current index.
      body: pags[currntIndex], // The bottom navigation bar widget.
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currntIndex, // The index of the currently selected item.
        onTap: (index) {
          // Callback function that is called when a tab is tapped.
          setState(() {
            currntIndex =
                index; // Update the state to change the selected tab index.
          });
        }, // List of BottomNavigationBarItem widgets that define the tabs.
        items: [
          // First tab: Home
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          // Second tab: Profile
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
      ),
    );
  }
}
