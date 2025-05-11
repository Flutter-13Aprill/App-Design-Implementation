import 'package:flutter/material.dart';
import 'package:project4/core/theme/app_theme.dart';
import 'package:project4/features/splash/page/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: SplashPage(),
    );
  }
}
