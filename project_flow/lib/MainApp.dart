
import 'package:flutter/material.dart';
import 'package:project_flow/page/splash/splash_page.dart';
class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainappState();
}

class _MainappState extends State<MainApp> {
  
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashPage()
    );
  }
}
