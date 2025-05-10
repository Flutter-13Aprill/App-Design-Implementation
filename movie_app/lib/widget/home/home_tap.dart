import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTap extends StatelessWidget {
  const HomeTap({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            tabs: [
              Tab(
                child: Text(
                  "Now playing",
                  style: GoogleFonts.lato(color: Colors.white, fontSize: 14),
                ),
              ),
              Tab(
                child: Text(
                  "Upcoming",
                  style: GoogleFonts.lato(color: Colors.white, fontSize: 14),
                ),
              ),

              Tab(
                child: Text(
                  "Popular",
                  style: GoogleFonts.lato(color: Colors.white, fontSize: 14),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    return Container(height: 60, width: 60, color: Colors.red);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
