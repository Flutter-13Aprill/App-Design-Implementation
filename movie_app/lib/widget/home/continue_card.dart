import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContinueCard extends StatelessWidget {
  final String img;
  const ContinueCard({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,

          height: 200,

          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: Image.asset(img, height: 180, fit: BoxFit.fill),
        ),
        Positioned(
          bottom: 35,
          left: 30,
          child: Container(
            height: 50,
            width: 211,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.50),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                SizedBox(width: 20),
                Image.asset("images/Play.png"),
                SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Continue Watching",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "Ready Player one",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
