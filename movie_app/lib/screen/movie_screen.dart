import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

class MovieScreen extends StatelessWidget {
  final String img;
  final String title;
  final double rate;
  final String synopsis;

  const MovieScreen({
    super.key,
    required this.img,
    required this.title,
    required this.rate,
    required this.synopsis,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xff15141F),

      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xffDADADA),
            size: 30,
          ),
        ),
        backgroundColor: Color(0xff15141F),
        actions: [
          IconButton(
            onPressed: () {
              scaffoldKey.currentState!.showBottomSheet(
                (context) => Container(
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromARGB(255, 12, 12, 18),
                  height: 100,
                  child: Center(
                    child: Text(
                      "Added to bookmarks successfully.",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              );
            },
            icon: Icon(Icons.bookmark, color: Color(0xffDADADA), size: 30),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 230,
            child: Image.asset(img, fit: BoxFit.cover),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              title,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 6),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),

            child: Row(
              children: [
                Icon(Icons.star, color: Colors.amberAccent, size: 14),
                SizedBox(width: 5),
                Text(
                  "$rate",
                  style: GoogleFonts.lato(
                    color: Colors.amberAccent,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),

            child: Text(
              "Synopsis",
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),

            child: Text(
              synopsis,
              style: GoogleFonts.lato(color: Colors.grey, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
