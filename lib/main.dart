import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// -- Screen
import 'package:kaf/screens/onboarding_screen.dart';

// - External Package
import 'package:google_fonts/google_fonts.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  // Force Portrait Mode
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, 
  ]);
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,

        textTheme: TextTheme(
          
          // For name of coffee
          titleLarge: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.3
          ),
          
          // For the price and name of coffee in product details 
          labelLarge: GoogleFonts.poppins(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.3
          ),

          // For onboarding title and the confirmation button 
          titleMedium: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xff242424)
          ),

          // For description of coffee, and add item and subtraction item
          displayMedium: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            letterSpacing:  0.3,
            height: 1.6
          ),

          // For description  in onboarding screen 
          bodyMedium: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing:  0.3,
            height: 1.6
          ),



          displaySmall: GoogleFonts.poppins(
            fontSize: 14, 
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
            color: Color(0xff74512D)
          ),

          labelSmall: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w300
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen()
    );
  }
}