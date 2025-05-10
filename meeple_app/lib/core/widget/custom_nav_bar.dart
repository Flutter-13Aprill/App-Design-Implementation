import 'package:flutter/material.dart';
import 'package:meeple_app/core/theme/app_palette.dart';
import 'package:meeple_app/featuers/cart/presentation/pages/cart_screen.dart';
import 'package:meeple_app/featuers/home/presentation/pages/home_screen.dart';
import 'package:meeple_app/featuers/profile/presentation/pages/profile_screen.dart';
import 'package:meeple_app/featuers/wishlist/presentation/pages/wishlist_screen.dart';

class CustomNavbar extends StatefulWidget {
  const CustomNavbar({super.key});

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  int selectIndex = 0;

  final List<Widget> pages = [
    HomeScreen(),
    WishlistScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppPalette.containersColor,
        currentIndex: selectIndex,
        onTap: (value) {
          setState(() {
            selectIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              selectIndex == 0 ? Icons.home_filled : Icons.home_outlined,
              color: AppPalette.mainTextColor,
              size: 40,
            ),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              selectIndex == 1 ? Icons.favorite : Icons.favorite_border_rounded,
              color: AppPalette.mainTextColor,
              size: 40,
            ),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              selectIndex == 2
                  ? Icons.shopping_cart
                  : Icons.shopping_cart_outlined,
              color: AppPalette.mainTextColor,
              size: 40,
            ),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              selectIndex == 3 ? Icons.person_2 : Icons.person_2_outlined,
              color: AppPalette.mainTextColor,
              size: 40,
            ),
            label: " ",
          ),
        ],
        unselectedLabelStyle: TextStyle(color: AppPalette.mainTextColor),
      ),
    );
  }
}
