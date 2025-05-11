import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Second page in the "onboarding_screen" PageView

class OnboardinSecond extends StatelessWidget {
  const OnboardinSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("In your Service", style: GoogleFonts.fraunces(fontSize: 20)),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
              height: 250,
              child: Image.asset(
                "assets/images/dominos_history.jpg",
                fit: BoxFit.fill,
              )),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Since 1960",
            style: GoogleFonts.fraunces(fontSize: 24, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
