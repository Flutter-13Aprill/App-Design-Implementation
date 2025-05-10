import 'package:flutter/material.dart';
import 'package:taskins_to_do_list_app/screens/breathing_technique_screen.dart';

import 'package:taskins_to_do_list_app/screens/log_in_screen.dart';
import 'package:taskins_to_do_list_app/screens/sign_up_screen.dart';
import 'package:taskins_to_do_list_app/screens/splash_screen.dart';
import 'package:taskins_to_do_list_app/widgets/nav_bar.dart';
import 'package:taskins_to_do_list_app/widgets/shimmer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false, // Disable Material 3
        primaryColor: const Color(0xFF8C3117),
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/login': (context) => const LogInScreen(),
        '/home': (context) => const NavBar(),
        '/shimmer': (context) => const ShimmerScreen(), 
         '/breathing': (context) => const BreathingTechniqueScreen(),// Add this line
      },
    );
  }
}
