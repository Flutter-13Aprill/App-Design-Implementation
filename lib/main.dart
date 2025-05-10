import 'package:app_design_implementation/Screen/Splash_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // Start the app
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue), // Define the theme color
      home: SplashScreen(), // Set the SplashScreen as the initial screen
      debugShowCheckedModeBanner: false, // Hide the debug banner
    );
  }
}
