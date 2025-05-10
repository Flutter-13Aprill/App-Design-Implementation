import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/screen/bottom_navigation_screen.dart';
import 'package:movie_app/screen/singup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff15141F),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),

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
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: TextField(
              cursorColor: Color(0xffFF8F71),

              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: "Email",
                labelStyle: GoogleFonts.lato(color: Colors.white),
                filled: true,
                fillColor: const Color.fromARGB(30, 255, 255, 255),
                prefixIcon: Icon(Icons.email, color: Color(0xffFF8F71)),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              cursorColor: Color(0xffFF8F71),

              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: "password ",
                labelStyle: GoogleFonts.lato(color: Colors.white),
                filled: true,
                fillColor: const Color.fromARGB(30, 255, 255, 255),
                prefixIcon: Icon(Icons.lock, color: Color(0xffFF8F71)),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),

            child: Text(
              "Forgot password?",
              style: GoogleFonts.lato(color: Colors.white),
            ),
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomNavigationScreen(),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xffFF8F71),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  "Login",
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SingupScreen()),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  "Sing Up",
                  style: GoogleFonts.lato(
                    color: Color(0xffFF8F71),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
