import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskins_to_do_list_app/screens/account_screen.dart';
import 'package:taskins_to_do_list_app/screens/home_screen.dart';
import 'package:taskins_to_do_list_app/screens/explore_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 1;

  final List<Widget> pages = [
  const ExploreScreen(),
    const HomeScreen(),
   
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0XFFFBD4B4),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        selectedItemColor: const Color(0xFF8C3117), // Font color for selected items
        unselectedItemColor: const Color(0xFF8C3117), // Font color for unselected items
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.normal,
          letterSpacing: 0.8,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: currentIndex == 0
                  ? SvgPicture.asset("lib/assets/svgs/more_filled.svg", width: 25)
                  : SvgPicture.asset("lib/assets/svgs/more.svg", width: 25),
            ),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: currentIndex == 1
                  ? SvgPicture.asset("lib/assets/svgs/home_filled.svg", width: 25)
                  : SvgPicture.asset("lib/assets/svgs/home.svg", width: 25),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: currentIndex == 2
                  ? SvgPicture.asset("lib/assets/svgs/account_filled.svg", width: 25)
                  : SvgPicture.asset("lib/assets/svgs/account.svg", width: 25),
            ),
            label: "Account",
          ),
          
        ],
      ),
    );
  }
}






