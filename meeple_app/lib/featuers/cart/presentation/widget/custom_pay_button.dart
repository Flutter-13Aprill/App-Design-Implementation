import 'package:flutter/material.dart';
import 'package:meeple_app/core/theme/app_palette.dart';

class CustomPayButton extends StatelessWidget {
  const CustomPayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: 370,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: AppPalette.mainTextColor,
        ),
        child: Center(
          child: FittedBox(child: Image.asset("assets/images/Pay.png")),
        ),
      ),
    );
  }
}
