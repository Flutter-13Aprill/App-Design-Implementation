import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project4/screen/home_screen%20copy.dart';
import 'package:project4/screen/home_screen.dart';
import 'package:project4/screen/notific.dart';
import 'package:project4/screen/profile.dart';
import 'package:project4/screen/time_line.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentPage = 3;
  final List<Widget> pages = [
    const TimeLine(),

    const Profile(),
    const Notific(),

    const HomeScreen2(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Color.fromARGB(255, 48, 213, 232),

        unselectedItemColor: Color.fromARGB(255, 139, 140, 140),

        type: BottomNavigationBarType.fixed,

        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.userClock, size: 25),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 35),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.notifications, size: 35),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 35),
            label: '',
          ),
        ],
      ),
    );
  }
}
