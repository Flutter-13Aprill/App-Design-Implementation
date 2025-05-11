import 'package:dominos_app/screens/menu_screen.dart';
import 'package:dominos_app/screens/sign_up_screen.dart';
import 'package:dominos_app/widgets/colors/dominos_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Login Screen
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(240, 237, 243, 255),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login",
                style: GoogleFonts.fraunces(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Email / Phone Number",
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(
                height: 8,
              ),
              Container( // Here the "Email / Phone Number" Text Field
                height: 50,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            width: 2,
                          ))),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Password",
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(
                height: 8,
              ),
              Container( // Here the "Password" Text Field
                height: 50,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.visibility_off_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            width: 2,
                          ))),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              InkWell( // Button for confiramation and entering the application
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MenuScreen()));
                },
                child: Container(
                  width: 350,
                  height: 45,
                  decoration: BoxDecoration(
                      color: dominosRed,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              const Spacer(),
              Center(
                  child: InkWell( // Navigation Button for "SignUp_Screen"
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                },
                child: RichText(
                    text: TextSpan(
                        text: "Don't Have an account? ",
                        style: const TextStyle(color: Colors.black),
                        children: [
                      TextSpan(
                          text: " Create Account",
                          style: TextStyle(
                              color: dominosRed,
                              decoration: TextDecoration.underline))
                    ])),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
