import 'package:flutter/material.dart';

Widget cardDetails(String img, String title, BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.85,
    height: 180,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: const Color.fromARGB(71, 0, 0, 0),
          blurRadius: 8,
          offset: const Offset(2, 4),
          spreadRadius: 1,
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(img, height: 180, fit: BoxFit.cover),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Lorem ipsum dolor sit\namet, consectetur\nadipiscing elit.Lorem\nipsum elit.',
            ),
            Row(
              children: [
                Text('\$ 180', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 70),
                Icon(Icons.arrow_forward),
              ],
            ),
          ],
        ),
        SizedBox(width: 16),
      ],
    ),
  );
}