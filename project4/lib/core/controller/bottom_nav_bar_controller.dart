import 'package:flutter/widgets.dart';
import 'package:project4/features/home/presentation/page/home_page.dart';

class BottomNavBarController {
  int selected = 0;
  void navigationBar(int currentIndex) {
    selected = currentIndex;
  }

  List<Widget> page = [
    HomePage(),

  ];
}
