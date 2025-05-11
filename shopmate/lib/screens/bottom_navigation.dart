import 'package:flutter/material.dart';
import 'package:shopmate/screens/lists_screens.dart';
import 'package:shopmate/screens/profile_screen.dart';

// Implements a bottom navigation bar to switch between Lists and Profile screens.
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  // Track the current selected index
  int selectedIndex = 0;
  // List of screens
  final List<Widget> screens = const [ListsScreens(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Display the screen based on the selected index
      body: screens[selectedIndex],

      //controls the bottom navigation bar at the screen's bottom
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list_rounded),
            label: 'Lists',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        // Set the current selected index
        currentIndex: selectedIndex,
        // Update selected index
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
      ),
    );
  }
}
