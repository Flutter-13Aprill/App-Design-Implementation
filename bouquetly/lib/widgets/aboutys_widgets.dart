import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutysWidgets extends StatefulWidget {
  const AboutysWidgets({super.key});

  @override
  State<AboutysWidgets> createState() => _AboutysWidgetsState();
}

class _AboutysWidgetsState extends State<AboutysWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 232, 228),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Stack(
            children: [
              Image.asset(
                "images/aboutus.jpg",
                width: 360,
                height: 500,
                fit: BoxFit.cover,
              ),
              Container(
                width: 360,
                height: 500,
                color: Colors.white.withOpacity(0.3),
              ),
              Positioned(
                left: 40,
                top: 180,
                child: Text(
                  "BOUQUETLY",
                  style: GoogleFonts.cormorantGaramond(
                    fontSize: 50,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
