import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopmate/extensions/screens/get_size_screen.dart';

class SocialmediaLogin extends StatelessWidget {
  ///SocialmediaLogin widget displays social media login options as icons
  const SocialmediaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Facebook log in
        SizedBox(
          width: context.getWidth() / 5,
          height: context.getHeight() / 18,
          child: IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/svg/facebook.svg',
              fit: BoxFit.contain,
            ),
          ),
        ),
        //Google+ log in
        SizedBox(
          width: context.getWidth() / 5,
          height: context.getHeight() / 18,
          child: IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/svg/google-plus.svg',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
