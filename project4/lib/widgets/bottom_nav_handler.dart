import 'package:flutter/material.dart';
import 'package:project4/extensions/size.dart';
import 'package:project4/screens/explore_screen.dart';
import 'package:project4/screens/following_screen.dart';
import 'package:project4/screens/settings_screen.dart';

class BottomNavHandler extends StatefulWidget {
  const BottomNavHandler({super.key});

  @override
  State<BottomNavHandler> createState() => _BottomNavHandlerState();
}

// here where the bottom navigation bar is handled to show other pages
class _BottomNavHandlerState extends State<BottomNavHandler> {
  int currentIndex = 0;
  List<Widget> currentNav = [
    ExploreScreen(), //home explore screen
    FollowingScreen(), //following screen
    SettingsScreen(), //settings screen
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentNav[currentIndex],
      bottomNavigationBar: Container(
        height: context.getHeight() * 0.1,
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.white, width: 1)),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color.fromARGB(255, 219, 180, 5),
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          //to move the indicator
          onTap: (value) => {currentIndex = value, setState(() {})},

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Following',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
