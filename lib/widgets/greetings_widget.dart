import 'package:flutter/material.dart';

class GreetingsWidget extends StatelessWidget {
  const GreetingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24),
      child: RichText(
        text: TextSpan(
          text: 'Hello,\n',
          style: Theme.of(
            context,
          ).textTheme.displaySmall!.copyWith(color: Colors.white),
          children: [
            TextSpan(
              text: 'Mohammed',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
