import 'package:flutter/material.dart';
import 'package:movie_app/screen/home_screen.dart';
import 'package:movie_app/screen/profile_screen.dart';
import 'package:movie_app/screen/search_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentIndex = 0;
  List<Widget> listWidget = [HomeScreen(), SearchScreen(), ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff15141F),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        currentIndex: currentIndex,

        iconSize: 30,
        backgroundColor: Color(0xff15141F),

        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home_filled, color: Color(0xffFF8F71)),
            icon: Icon(Icons.home_filled, color: Color(0xff67686D)),
            label: " ",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.search, color: Color(0xffFF8F71)),

            icon: Icon(Icons.search, color: Color(0xff67686D)),
            label: " ",
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.person_2_rounded, color: Color(0xffFF8F71)),
            icon: Icon(Icons.person_2_rounded, color: Color(0xff67686D)),
            label: " ",
          ),
        ],
      ),
      body: SafeArea(child: listWidget[currentIndex]),
    );
  }
}
