import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:project4/extensions/size.dart';
import 'package:project4/screens/app_explaining_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});


// splash screen with animated text and gif image

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    const colorizeTextStyle = TextStyle(fontSize: 32.0, fontFamily: 'Horizon');
   // Colors for the text animation

    const colorizeColors = [
      Color.fromARGB(255, 251, 37, 118),
      Colors.purple,
      Color.fromARGB(255, 63, 0, 113),
    ];

    Future.delayed(Duration(seconds: 3),(){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> AppExplaining()));
      

      
    });
    return Scaffold(
      backgroundColor: Colors.black,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: [
            Container(
              width: context.getWidth()*0.58,
              height: context.getHeight()*0.26,
              child: Image.asset('assets/images/bun_rabbit.webp'),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Stream',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //animated text
                AnimatedTextKit(isRepeatingAnimation: false,
                  
                  animatedTexts: [
                    ColorizeAnimatedText(speed: Duration(seconds: 1),
                      'Bun',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
