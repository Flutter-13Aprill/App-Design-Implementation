import 'package:flutter/material.dart';

// -- Extension
import 'package:kaf/extensions/screen_sizes.dart';

class ConfirmationButtonWidget extends StatelessWidget {

  /// [ConfirmationButtonWidget] is a reusable button used across the app for confirming actions
  const ConfirmationButtonWidget({super.key, required this.text, required this.onPressed});
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(

      onPressed: onPressed,
      child: Container(
        height: 50,
        width: context.getWidth(),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xff543310),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Text( text,style: Theme.of(context,).textTheme.titleLarge!.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
