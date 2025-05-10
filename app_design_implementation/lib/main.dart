import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const AppDesignImplementation());
}

class AppDesignImplementation extends StatelessWidget {
  const AppDesignImplementation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
