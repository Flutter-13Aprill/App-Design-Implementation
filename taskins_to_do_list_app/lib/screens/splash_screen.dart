
import 'package:flutter/material.dart';

import 'dart:async';
import 'package:taskins_to_do_list_app/styles/text_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
        List<String> cats =[
          "lib/assets/images/amazing_cat.png",
           "lib/assets/images/loving_cat.png", 
           "lib/assets/images/meh_cat.png", 
           "lib/assets/images/party_cat.png", 
           "lib/assets/images/silly_cat.png"
           ];

           int currentIndex = 0;
           Timer? timer;

    @override
void initState() {
  super.initState();
  timer = Timer.periodic(const Duration(seconds:2), (timer){
    setState(() {
      currentIndex = (currentIndex + 1) % cats.length;
    });
  });

}
 @override
void dispose() {
  timer?.cancel();
  super.dispose();
}


  @override

  Widget build(BuildContext context) 
  {
     return GestureDetector(
  onTap: (){
    Navigator.pushReplacementNamed(context , '/signup');
  },
  

child:
  Scaffold(
    backgroundColor: Color(0XFFFAF4EC),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.only(top:300),
        child: Column(children: [
  
          Image.asset(cats[currentIndex]),
        
            Text("Welcome to", style: AppTextStyles.fontSizeOne),
           Text("Taskins", style: AppTextStyles.fontSizeFive,),
        ],
        ),
      ),
    ),

  ),
    );
  }
}