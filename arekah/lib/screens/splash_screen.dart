import 'dart:ui' show ImageFilter;
import 'package:arekah/screens/on_boarding_screen.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 7),(){
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const OnBoardingScreen()
        ));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, 
    overlays: SystemUiOverlay.values);
    super.dispose();
  }

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
                image: AssetImage('assets/splash2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Blur effect
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 15), // adjust blur strength here
              child: Container(
                color: const Color.fromARGB(142, 0, 0, 0), // optional: darken the blur
              ),
            ),
          ),
          // Content
          SafeArea(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 24,
                children:  [
                  SvgPicture.asset('assets/logo.svg',width: 250,colorFilter: ColorFilter.mode(const Color.fromARGB(83, 255, 255, 255), BlendMode.srcIn),),
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
            ),
          ),
        ],
      ),
    );
  }
}