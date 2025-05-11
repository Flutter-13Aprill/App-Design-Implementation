import 'package:flutter/material.dart';
import 'package:project4/core/controller/bottom_nav_bar_controller.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = BottomNavBarController();
    return Scaffold(
      body: controller.page[controller.selected],
      bottomNavigationBar: BottomNavigationBar(
        onTap: controller.navigationBar,
        currentIndex: controller.selected,
        backgroundColor: Colors.blueAccent,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        ],
      ),
    );
  }
}
