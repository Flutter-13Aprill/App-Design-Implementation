
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskins_to_do_list_app/styles/text_styles.dart';
import 'package:taskins_to_do_list_app/widgets/nav_bar.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool isRemembered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFBD4B4),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            // Background Image
            
            // Login Form
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Center(
                child: Container(
                  height: 579,
                  width: 350,
                  decoration: BoxDecoration(
                    color: const Color(0XFFFAF4EC),
                    border: Border.all(
                      color: const Color(0xFF8C3117),
                      width: 4,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(37)),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 48),
                      Text("Log In", style: AppTextStyles.fontSizeTwo),
                      const SizedBox(height: 24),

                      // Email TextField
                      SizedBox(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter your Email",
                            labelText: "Email",
                            hintStyle: AppTextStyles.fontSizeFive,
                            labelStyle: AppTextStyles.fontSizeFive,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                color: Color(0xFF8C3117),
                                width: 3,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: Color(0xFF8C3117),
                                width: 2,
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Password TextField
                      SizedBox(
                        width: 300,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter your Password",
                            labelText: "Password",
                            hintStyle: AppTextStyles.fontSizeFive,
                            labelStyle: AppTextStyles.fontSizeFive,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(
                                color: Color(0xFF8C3117),
                                width: 3,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: Color(0xFF8C3117),
                                width: 2,
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Remember Me Checkbox
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: isRemembered,
                                  onChanged: (bool? newValue) {
                                    setState(() {
                                      isRemembered = newValue ?? false;
                                    });
                                  },
                                  activeColor: const Color(0xFF8C3117),
                                ),
                                Text(
                                  "Remember Me",
                                  style: AppTextStyles.fontSizeSix,
                                ),
                              ],
                            ),
                            Text(
                              "Forgot password",
                              style: AppTextStyles.fontSizeSix,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Log In Button
                      SizedBox(
                        width: 176,
                        height: 49,
                        child: ElevatedButton(
                          onPressed: () {
                         Navigator.pushReplacementNamed(context, '/home');

                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0XFFF3A398),
                            elevation: 0,
                            foregroundColor: const Color(0xFF8C3117),
                            side: const BorderSide(
                              color: Color(0xFF8C3117),
                              width: 3,
                            ),
                          ),
                          child: Text("Log In", style: AppTextStyles.fontSizeFour),
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Social Media Login
                      Text("Or Sign In with", style: AppTextStyles.fontSizeSix),
                      const SizedBox(height: 22),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("lib/assets/icons/facebook.png", width: 35, height: 35),
                          const SizedBox(width: 16),
                          Image.asset("lib/assets/icons/google.png", width: 35, height: 35),
                          const SizedBox(width: 16),
                          Image.asset("lib/assets/icons/apple.png", width: 35, height: 35),
                        ],
                      ),
                      const SizedBox(height: 32),

                      // Sign Up Link
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF8C3117),
                            ),
                          ),
                          const SizedBox(width: 6),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacementNamed(context, '/signup');

                            },
                            child: Text(
                              "Sign Up",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                                color: const Color(0xFFF3A398),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
             
            ),
             Positioned(
     top: 100,
        child: 
      Image.asset(
                "lib/assets/images/amazing_cat.png",
                cacheWidth: 600,
              ),)
          ],
        ),
      ),
    );
  }
}
