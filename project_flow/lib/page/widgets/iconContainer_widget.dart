import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({super.key,required this.iconPath});
  final String iconPath;
  @override
  
  Widget build(BuildContext context) {
    return
     Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color:const Color(0xFF756EF3) ,

      ),
      child: Image.asset(iconPath),
    );
  }
}