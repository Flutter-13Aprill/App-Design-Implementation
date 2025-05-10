import 'package:flutter/material.dart';
import 'package:meeple_app/core/theme/app_palette.dart';

class CustomEmailBar extends StatelessWidget {
  const CustomEmailBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 370,
      height: 55,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppPalette.containersColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide.none,
          ),
          hintText: 'Email',
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
