import 'package:flutter/material.dart';

import 'package:meeple_app/core/text/text_styles.dart';
import 'package:meeple_app/featuers/wishlist/presentation/widget/custom_container.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        leadingWidth: 90,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: SizedBox(
            height: 23,
            width: 60,
            child: Image.asset("assets/images/logo.png", fit: BoxFit.fill),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Wishlist",
              style: TextStyles.sfPro700.copyWith(fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 30, width: 30),
            CustomContainer(),
          ],
        ),
      ),
    );
  }
}
