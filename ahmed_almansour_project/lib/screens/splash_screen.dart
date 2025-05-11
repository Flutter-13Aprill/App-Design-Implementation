import 'package:flutter/material.dart';
import 'package:ahmed_almansour_project/screens/intro_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Delay for 6 seconds before navigating to the IntroScreen
    Future.delayed(Duration(seconds: 6), () {
      setState(() {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => IntroScreen()),
        );
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Image.asset('assets/images/splash.webp',fit: BoxFit.fill,),),);
  }
}