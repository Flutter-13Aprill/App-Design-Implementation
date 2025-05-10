import 'package:flutter/material.dart';

import 'package:meeple_app/core/text/text_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
              "Profile",
              style: TextStyles.sfPro700.copyWith(fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 190, width: 190),
            Column(
              children: [
                Center(
                  child: SizedBox(
                    height: 148,
                    width: 148,
                    child: Image.asset("assets/images/error.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    """Page not found! but your journey is still going""",
                    style: TextStyles.sfPro700Title.copyWith(
                      fontWeight: FontWeight.w300,
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
