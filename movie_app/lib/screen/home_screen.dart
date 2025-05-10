import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/widget/home/continue_card.dart';
import 'package:movie_app/widget/movie/movie_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              spacing: 4,
              children: [
                Text(
                  "Stream",
                  style: GoogleFonts.lato(
                    color: Color(0xffFF8F71),
                    fontSize: 24,
                  ),
                ),
                Text(
                  "Everywhere",
                  style: GoogleFonts.lato(color: Colors.white, fontSize: 24),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 205,
            width: MediaQuery.of(context).size.width,

            child: PageView(
              children: [
                ContinueCard(img: "images/deadpool.jpg"),

                ContinueCard(img: "images/venom.webp"),
              ],
            ),
          ),
          SizedBox(height: 16),

          TabBar(
            indicatorColor: Color(0xffFF8F71),
            padding: EdgeInsets.only(bottom: 20),
            dividerHeight: 0,
            tabs: [
              Text(
                "Now playing",
                style: GoogleFonts.lato(color: Colors.white, fontSize: 14),
              ),
              Text(
                "Upcoming",
                style: GoogleFonts.lato(color: Colors.white, fontSize: 14),
              ),
              Text(
                "Top rated",
                style: GoogleFonts.lato(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [MovieContainer(), MovieContainer(), MovieContainer()],
            ),
          ),
        ],
      ),
    );
  }
}
