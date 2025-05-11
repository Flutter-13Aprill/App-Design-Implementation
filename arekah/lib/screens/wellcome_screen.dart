
import 'dart:ui';

import 'package:arekah/screens/login_screen.dart';
import 'package:arekah/widgets/botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WellcomeScreen extends StatelessWidget {
  const WellcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backGround.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Blur effect
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 0,
                sigmaY: 0,
              ), // blur strength here
              child: Container(
                color: const Color.fromARGB(
                  142,
                  0,
                  0,
                  0,
                ), 
              ),
            ),
          ),
          // Content
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 64.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    spacing: 16,
                    children: [
                      Text(
                        'Wellcome to',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w300,
                          color: const Color.fromARGB(255, 243, 224, 186),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/logo.svg',
                            width: 60,
                            colorFilter: ColorFilter.mode(
                              const Color.fromARGB(83, 255, 255, 255),
                              BlendMode.srcIn,
                            ),
                          ),
                          SizedBox(width: 16),
                          Text(
                            'A R E K AH',
                            style: TextStyle(
                              fontSize: 48,
                              color: const Color.fromARGB(83, 255, 255, 255),
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 260),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        child: customBotton('Login', context)
                      ),

                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Please Login'),
                                content: const Text(
                                  'you need to log in with user name',
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(
                                        context,
                                      ).pop(); 
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 60,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(101, 255, 255, 255),
                            border: Border.all(
                              color: const Color.fromARGB(255, 171, 196, 170),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: Text(
                              'Register',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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


