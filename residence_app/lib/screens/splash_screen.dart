import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:residence_app/screens/started_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
// The splash screen displays the logo for 8 seconds, then transitions to the onboarding screen.

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 8), () {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (_) => StartedScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Center(
        child: Image.asset(
          "assets/images/residence-app-logo.png",
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width * 0.5,
        ),
      ),
    );
  }
}
