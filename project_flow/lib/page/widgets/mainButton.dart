import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.yourLogic, required this.text});
  final Function yourLogic;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 311,
      height: 56,
      child: ElevatedButton(
        onPressed: () {
          yourLogic();
        }, 
        style: ElevatedButton.styleFrom(
          backgroundColor:const Color(0xFF756EF3),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child:  Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
