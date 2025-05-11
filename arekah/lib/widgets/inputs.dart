import 'package:flutter/material.dart';

Widget customTextField(String lable, BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.8,
    height: 55,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      color: const Color.fromARGB(65, 255, 255, 255),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Center(
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: lable,
          hintStyle: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    ),
  );
}