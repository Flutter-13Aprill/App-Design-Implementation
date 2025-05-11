


import 'package:ahmed_almansour_project/pages_content/courses_content.dart';
import 'package:ahmed_almansour_project/pages_content/home_content.dart';
import 'package:ahmed_almansour_project/pages_content/profile_content.dart';
import 'package:ahmed_almansour_project/tools/colors/colors.dart';
import 'package:flutter/material.dart';
//import 'package:podkes_app/screens/pages_content/discover_content.dart';
//import 'package:podkes_app/screens/pages_content/library_content.dart';
//import 'package:podkes_app/screens/pages_content/profile_content.dart';

//bottom navigation bar class
class BottomNavigationController extends StatefulWidget {
  const BottomNavigationController({super.key});

  @override
  State<BottomNavigationController> createState() => _BottomNavigationControllerState();
}

class _BottomNavigationControllerState extends State<BottomNavigationController> {
  // current index 0 represnt Descover
  int _currentIndex = 0;

  // pages 
  final List<Widget> _pages = [
  HomeContent(),
  CoursesContent(),
  ProfileContent()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: whitegray,
        
        //start with current index home page
        body: _pages[_currentIndex],
        //coustmaize bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: whitered,
          selectedItemColor: const Color.fromARGB(255, 193, 192, 192),
          unselectedItemColor:whitegray,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          //elemants of navigation bar
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book),
              label: 'Courses',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            
          ],
        ),
      ),
    );
  }
}

