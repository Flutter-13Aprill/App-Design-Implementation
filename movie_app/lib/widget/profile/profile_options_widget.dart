import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/screen/login_screen.dart';
import 'package:movie_app/widget/profile/profile_option_card.dart';

class ProfileOptionsWidget extends StatelessWidget {
  const ProfileOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: Color(0xff252836),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ProfileOptionCard(
            text: "Watch list",
            color: Color(0xffFFBF47),
            borderSide: BorderSide(width: 0.1, color: Colors.white),
          ),
          ProfileOptionCard(
            text: "Privacy",
            color: Color(0xffB548C6),
            borderSide: BorderSide(width: 0.1, color: Colors.white),
          ),
          ProfileOptionCard(
            text: "About",
            color: Color(0xff32A7E2),
            borderSide: BorderSide(width: 0.1, color: Colors.white),
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: Color(0xff15141F),
                    icon: Icon(Icons.question_mark, color: Color(0xffFF8F71)),

                    content: Text(
                      "Are you sure want to\n Logout?",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xff15141F),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "No",
                            style: GoogleFonts.inter(
                              color: Color(0xffFF8F71),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xff15141F),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "yes",
                            style: GoogleFonts.inter(
                              color: Color(0xffFF8F71),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            child: ProfileOptionCard(
              text: "Logout",
              color: Color(0xffEC4F3C),
              borderSide: BorderSide.none,
            ),
          ),
        ],
      ),
    );
  }
}
