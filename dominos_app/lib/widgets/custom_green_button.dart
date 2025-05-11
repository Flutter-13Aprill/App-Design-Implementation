import 'package:flutter/material.dart';


// A class of a green clickable container to be used on both the "MenuScreen" and "OrdersScreen"
class CustomGreenButton extends StatelessWidget {
  const CustomGreenButton(
      {super.key, required this.buttonLabel, required this.showButtomSheet});

  final String buttonLabel;
  final void Function() showButtomSheet;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:
        showButtomSheet
      ,
      child: Container(
        width: 85,
        height: 25,
        decoration: BoxDecoration(
            color: Colors.lightGreen.shade700,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(buttonLabel,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold))),
      ),
    );
  }
}
