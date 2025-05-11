import 'package:flutter/material.dart';

Widget customBotton(String lable, BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.8,
    height: 60,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 171, 196, 170),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Center(
      child: Text(
        lable,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}