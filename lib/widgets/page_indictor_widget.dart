import 'package:flutter/material.dart';

class PageIndictorWidget extends StatelessWidget {
  
  const PageIndictorWidget({super.key, required this.pageViewCurrentIndex});
  final int pageViewCurrentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(2, (index) {
      return AnimatedContainer(
        width: pageViewCurrentIndex == index ? 40 : 10,
        height: 10,
        duration: Duration(milliseconds: 400),
        decoration: BoxDecoration(
          color: pageViewCurrentIndex == index ? Color(0xffAF8F6F) : Color(0xffD4D4D1),
          borderRadius: BorderRadius.circular(20)
        ),
        );
    }));
  }
}
