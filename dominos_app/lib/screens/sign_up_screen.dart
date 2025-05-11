import 'package:dominos_app/screens/login_screen.dart';
import 'package:dominos_app/screens/menu_screen.dart';
import 'package:dominos_app/widgets/colors/dominos_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// SignUp Screen
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
              RichText(
                  text: TextSpan(
                      text: "Create Account",
                      style: GoogleFonts.fraunces(
                          color: dominosRed,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      children:  [
                     TextSpan(
                        text: " and get access to exclusive deals!",
                        style: TextStyle(color: dominosBlue))
                  ])),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 50,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: TextField( // Here the User "full name" Text Field
                  decoration: InputDecoration(
                      hintText: "Full Name",
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
              Container(
                height: 50,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: TextField( // Here the user "Email" Text Field
                  decoration: InputDecoration( 
                      hintText: "Email",
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
              Container(
                height: 50,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: TextField( // Here the user "Phone Number" Text Field
                  decoration: InputDecoration(
                      hintText: "Phone Number",
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
              Container(
                height: 50,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: TextField( // Here the user "Password" Text Field
                  decoration: InputDecoration(
                      hintText: "Password",
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
              InkWell( // Creating account button and accessing the application
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const MenuScreen()));
                },
                child: Container(
                  width: 350,
                  height: 45,
                  decoration: BoxDecoration(
                      color: dominosRed,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                      child: Text(
                    "Create Account",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              const Spacer(),
              Center(
                  child: InkWell(
                onTap: () { // Navigation Button for "Login_Screen"
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()));
                },
                child: RichText(
                    text:  TextSpan(
                        text: "Already have an account? ",
                        style: const TextStyle(color: Colors.black),
                        children: [
                      TextSpan(
                          text: " Login",
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
