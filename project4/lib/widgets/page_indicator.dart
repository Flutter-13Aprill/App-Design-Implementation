import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  //current page will be required so the indicator know in which page the porgram is
  const PageIndicator({super.key, required this.currentPage});
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      // in this row it will be add 3 dots and be handled currentPage will tell the widget in which page the user in
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: AnimatedContainer(
            curve: Curves.easeIn,
            duration: Duration(microseconds: 500),
            width: index == currentPage ? 21 : 8,
            height: 8,
            decoration: BoxDecoration(
              color:
                  index == currentPage
                      ? Color.fromARGB(255, 63, 0, 113)
                      : Color.fromARGB(225, 123, 128, 133),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
