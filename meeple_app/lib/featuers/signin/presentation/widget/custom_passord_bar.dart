import 'package:flutter/material.dart';
import 'package:meeple_app/core/theme/app_palette.dart';

class CustomPassordBar extends StatelessWidget {
  const CustomPassordBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 370,
      height: 55,
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.visibility_off_outlined),
          filled: true,
          fillColor: AppPalette.containersColor,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide.none,
          ),
          hintText: 'Password',
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
