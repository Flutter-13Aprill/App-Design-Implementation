import 'package:flutter/material.dart';
import 'package:meeple_app/core/function/navigation.dart';
import 'package:meeple_app/core/text/text_styles.dart';
import 'package:meeple_app/core/theme/app_palette.dart';
import 'package:meeple_app/featuers/login/presentation/pages/log_in_screen.dart';

class CustomLogInButton extends StatelessWidget {
  const CustomLogInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 370,
      child: ElevatedButton(
        onPressed: () {
          customReplacmentNaviagte(context, LogInScreen());
        },
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.transparent),
          foregroundColor: WidgetStatePropertyAll(AppPalette.mainTextColor),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
              side: BorderSide(color: AppPalette.smallTextColor, width: 2),
            ),
          ),
        ),
        child: Text("Sign Up", style: TextStyles.sfPro500),
      ),
    );
  }
}
