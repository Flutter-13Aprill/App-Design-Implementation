import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.press, required this.child});
  final VoidCallback press;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: press, child: child);
  }
}
