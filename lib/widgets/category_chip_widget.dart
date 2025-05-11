import 'package:flutter/material.dart';

// -- Extension
import 'package:kaf/extensions/screen_sizes.dart';

class CategoryChipWidget extends StatelessWidget {
  const CategoryChipWidget({super.key, required this.categoryName, required this.categoryTabIndex, required this.tabBarIndex});
  final String categoryName;
  final int categoryTabIndex; 
  final int tabBarIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getHeight()  * (30 / 956), 
      padding: EdgeInsets.symmetric(horizontal: 24),
      margin: EdgeInsets.symmetric(horizontal: 8),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: categoryTabIndex == tabBarIndex ?  Color(0xffAF8F6F) : Color(0xffF8F4E1),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(categoryName)
      );
  }
}
