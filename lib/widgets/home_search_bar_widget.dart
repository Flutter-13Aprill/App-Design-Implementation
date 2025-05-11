import 'package:flutter/material.dart';

// -- External Package
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

class HomeSearchBarWidget extends StatelessWidget {
  const HomeSearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        cursorHeight: 14,
        decoration: InputDecoration(
          hintText: 'What do you like to drink ?',
          hintStyle: GoogleFonts.poppins(fontSize: 14),
          prefixIcon: SvgPicture.asset(
            'assets/home_screen/svgs/Search.svg',
            colorFilter: ColorFilter.mode(Colors.black,BlendMode.srcIn),
            fit: BoxFit.scaleDown,
          ),

          enabledBorder: GradientOutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [Color(0xff543310), Color(0xffAF8F6F)],
            ),
            width: 1,
          ),

          focusedBorder: GradientOutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [Color(0xff543310), Color(0xffAF8F6F)],
            ),
            width: 1,
          ),
        ),
      ),
    );
  }
}
