import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Aboutus2Widget extends StatefulWidget {
  const Aboutus2Widget({super.key});

  @override
  State<Aboutus2Widget> createState() => _Aboutus2WidgetState();
}

class _Aboutus2WidgetState extends State<Aboutus2Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 232, 228),
      body: Center(
        child: Container(
          width: 360,
          height: 500,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white.withOpacity(0.5),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  "BOUQUETLY ",
                  style: GoogleFonts.cormorantGaramond(
                    fontSize: 50,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "About Us\n",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "At Bouquetly, beauty is always one tap away. Choose from elegant ready-made bouquets and get them delivered right to your door — fresh, fast, and full of love.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    wordSpacing: 4,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
