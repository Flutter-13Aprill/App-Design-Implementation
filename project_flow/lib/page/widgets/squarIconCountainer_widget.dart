import 'package:flutter/material.dart';

class Squariconcountainer extends StatelessWidget {
  const Squariconcountainer({super.key, required this.back,required this.selectedIcon});
  final bool back;
  final IconData selectedIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      
      onTap: () {
        if (back==true) {
          Navigator.pop(context);
        }
      },
      child: Container(
        // margin: EdgeInsets.only(left: 16),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black26),
        ),
        child: Icon(
          selectedIcon,
          color: Colors.black87,
        ),
      ),
    );
  }
}
