import 'package:flutter/material.dart';
import 'package:meeple_app/core/text/text_styles.dart';
import 'package:meeple_app/core/theme/app_palette.dart';

class CustomButtonForcart extends StatelessWidget {
  const CustomButtonForcart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 97,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: AppPalette.buttonColor,
        ),
        child: Center(
          child: FittedBox(
            child: Text(
              "Add To Cart",
              style: TextStyles.sfPro500.copyWith(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
