import 'package:dominos_app/widgets/colors/dominos_colors.dart';
import 'package:flutter/material.dart';

// the "Tabbar" items class 

class CategoryTab extends StatefulWidget {
  CategoryTab(
      {super.key,
      required this.categoryName,     //Tab Item Name
      required this.categoryWidth,    //Tab Item container width
      required this.categoryIndex,    //Tab Item index
      required this.selectedIndex});  //The Selected Tab Item index
  final String categoryName;
  final double categoryWidth;
  final int categoryIndex;
  int selectedIndex;
  
  @override
  State<CategoryTab> createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.categoryWidth,
      height: 36,
      decoration: BoxDecoration(
          color: dominosBlue,
          borderRadius: BorderRadius.circular(25)),
      child: Center(
        child: Text(
          widget.categoryName,
          style: TextStyle(       // if the "Tab" Item is selected change its color
              color: widget.selectedIndex == widget.categoryIndex
                  ? Colors.white 
                  : const Color.fromARGB(155, 249, 249, 250),
              fontSize: 13),
        ),
      ),
    );
  }
}
