import 'package:flutter/material.dart';
import 'package:taskins_to_do_list_app/styles/text_styles.dart';
import 'package:flutter_animate/flutter_animate.dart';

class BreathingTechniqueScreen extends StatelessWidget {
  const BreathingTechniqueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

   backgroundColor: const Color(0XFFFBD4B4),
      appBar: AppBar(
         backgroundColor: const Color(0XFFFBD4B4),
      elevation: 0,
        iconTheme: const IconThemeData(
      color: Color(0xFF8C3117),
      
      ),

      ),
      
      body: Stack(children: [

SingleChildScrollView(
  child: Column(children: [
    SizedBox(height: 100),
  Container(
            width: 430,
            height: 720,
            decoration: BoxDecoration(
              color: Color(0XFFFAF4EC),
               borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
            ),
              border: Border(
        top: BorderSide(
          color: Color(0xFF8C3117),
          width: 4,
        ),
        left: BorderSide(
          color: Color(0xFF8C3117),
          width: 4,
        ),
        right: BorderSide(
          color: Color(0xFF8C3117),
          width: 4,
        ),
        
            ),
            ),
            child: Column(children: 
            
            [
              SizedBox(height: 32,),
                Text("Relax and Breath", style: AppTextStyles.fontSizeOne),
                  SizedBox(height: 50,),
                Animate(
                  onComplete: (controller) {
    controller.repeat();
  },
                  effects: 
            [
  
   ScaleEffect(
  begin: Offset(0.8, 0.8),
  end: Offset(1.0, 1.0),
  duration: Duration(seconds: 4),
  curve: Curves.easeInOutBack, // Smooth breathing effect
),


    
    
    ],
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Color(0xffF3A398),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                 SizedBox(height: 48,),
                SizedBox(
                  width: 143,
                  height: 49,
                  child: ElevatedButton(
                    onPressed: (){
                  
                    }, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffF3A398),
                      elevation: 0,
                     
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // Rounded corners
                        side: const BorderSide(
                          color: Color(0xFF8C3117), // Border color
                          width: 3, // Border width
                        ),
                      ),
                    ),
                    child: Text("Restart", style: AppTextStyles.fontSizeFour)),
                ),
                    
                     ]
                    ),
  ),
  
   
     
  
        ],),
),
      Positioned(
        top:10,
        left: 40,
        child: 
      Image.asset(
                "lib/assets/images/amazing_cat.png",
                cacheWidth: 600,
              ),
      
      )
      
      ]),


      
    
    );
  }
}