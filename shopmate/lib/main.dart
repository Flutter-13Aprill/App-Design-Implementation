import 'package:flutter/material.dart';
import 'package:shopmate/extensions/screens/get_size_screen.dart';
import 'package:shopmate/screens/onboarding_screens.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopMate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFFC3D6AE), //Sage Green,
          onPrimary: Colors.grey.shade600,
          secondary: Color(0xFF94AD73), //Olive Green,
          onSecondary: Colors.white,
          tertiary: Color(0xFFDDB3C4), //Dusty Pink
          onTertiary: Color(0xFFE6E1DC), //Warm Gray,
          error: Color(0xFFC0565C), //Dusty red
          onError: Colors.white,
          surface: Color(0xFFF4F2EC), //Off White
          onSurface: Colors.grey.shade600,
        ),
        scaffoldBackgroundColor: Color(0xFFF4F2EC), //Sage Green,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.grey.shade800),
          titleTextStyle: TextStyle(
            color: Colors.grey.shade800,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            fixedSize: WidgetStateProperty.all(
              Size(context.getWidth() + 150, context.getHeight() / 20),
            ),
            backgroundColor: WidgetStateProperty.all(Color(0xFF94AD73)),
            foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ),
        dividerColor: Color(0xFFE6E1DC),
      ),
      home: OnboardingScreens(),
    );
  }
}
