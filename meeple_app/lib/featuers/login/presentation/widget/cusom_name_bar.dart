import 'package:flutter/material.dart';
import 'package:meeple_app/core/theme/app_palette.dart';

class CusomNameBar extends StatelessWidget {
  const CusomNameBar({super.key});

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
          hintText: 'Name',
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
