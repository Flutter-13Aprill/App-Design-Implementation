import 'package:flutter/material.dart';

class ContainerWithText extends StatelessWidget {
  const ContainerWithText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          alignment: Alignment.center,
          height: 32,
          width: 72,

          decoration: BoxDecoration(
            color: Color.fromRGBO(101, 170, 234,1 ),
            
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
