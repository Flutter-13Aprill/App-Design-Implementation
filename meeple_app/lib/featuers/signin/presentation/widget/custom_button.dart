import 'package:flutter/material.dart';
import 'package:meeple_app/core/function/navigation.dart';
import 'package:meeple_app/core/text/text_styles.dart';
import 'package:meeple_app/core/theme/app_palette.dart';
import 'package:meeple_app/core/widget/custom_nav_bar.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 370,
      child: ElevatedButton(
        onPressed: () {
          customReplacmentNaviagte(context, CustomNavbar());
        },
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(AppPalette.buttonColor),
        ),
        child: Text("Sign In", style: TextStyles.sfPro500),
      ),
    );
  }
}
