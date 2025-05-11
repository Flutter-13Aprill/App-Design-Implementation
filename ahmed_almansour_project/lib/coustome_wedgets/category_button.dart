import 'package:flutter/material.dart';
import 'package:ahmed_almansour_project/Extensions_screen/screen_size.dart';
class CategoryButton extends StatelessWidget {
  final String label;
// constarcter
  const CategoryButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
// start with padding for make horizontal space between containers
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: context.getwidth()/10*0.25),
      // the container that contain category button content
      child: Container(
        padding:  EdgeInsets.symmetric(horizontal:  context.getwidth()*0.06),
        decoration: BoxDecoration(
          color: Color.fromARGB(255,47, 49, 66),
          borderRadius: BorderRadius.circular(20),
        ),
        //centering the text
        child: Center(
          // the text of category button
          child: Text(
            label,
            style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold ,fontSize: context.getwidth()/10*0.49),
          ),
        ),
      ),
    );
  }
}