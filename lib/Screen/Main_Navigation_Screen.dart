import 'package:app_design_implementation/Screen/Home_Screen.dart';
import 'package:app_design_implementation/Screen/Template_Screen.dart';
import 'package:app_design_implementation/Screen/profile_screen.dart';
import 'package:flutter/material.dart';

class MainNavigationScreen extends StatefulWidget {
  @override
  _MainNavigationScreenState createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _currentIndex = 0;

  // List of screens for each tab
  final List<Widget> _screens = [
    HomeScreen(),
    TemplateScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2D2B40), // Background color for the whole screen
      body: IndexedStack(
        index: _currentIndex, // Keeps the active screen visible
        children: _screens, // List of screens to display
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF3A3456), // Gradient start color
              Color(0xFF2D2B40), // Gradient end color
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Fixed type for better UI
          backgroundColor: Colors.transparent, // Transparent background for bottom bar
          elevation: 0, // Remove elevation for flat design
          currentIndex: _currentIndex, // Track the currently selected index
          selectedItemColor: Color(0xFFBFA0FF), // Color for selected icon
          unselectedItemColor: Colors.white60, // Color for unselected icon
          onTap: (index) => setState(() => _currentIndex = index), // Update current index on tap
          items: [
            // Home tab
            BottomNavigationBarItem(
              icon: _animatedIcon(Icons.home, 0),
              label: 'Home',
            ),
            // Template tab
            BottomNavigationBarItem(
              icon: _animatedIcon(Icons.library_books_outlined, 1),
              label: 'Template',
            ),
            // Profile tab
            BottomNavigationBarItem(
              icon: _animatedIcon(Icons.person_2, 2),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  // Animated icon with size and elevation effect when selected
  Widget _animatedIcon(IconData icon, int index) {
    bool isSelected = _currentIndex == index;
    return AnimatedContainer(
      duration: Duration(milliseconds: 250), // Duration for the animation
      curve: Curves.easeInOut, // Animation curve for smooth transition
      transform: Matrix4.translationValues(0, isSelected ? -4 : 0, 0), // Elevation effect
      child: Icon(
        icon,
        size: isSelected ? 28 : 24, // Adjust size based on selection
        color: isSelected ? Color(0xFFBFA0FF) : Colors.white60, // Color based on selection
      ),
    );
  }
}
