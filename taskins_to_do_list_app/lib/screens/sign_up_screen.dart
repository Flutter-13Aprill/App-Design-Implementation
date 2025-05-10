
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:taskins_to_do_list_app/screens/log_in_screen.dart';

import 'package:taskins_to_do_list_app/styles/text_styles.dart';
import 'package:taskins_to_do_list_app/widgets/nav_bar.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: Color(0XFFFBD4B4),
  body: Center(
    
    child: Column(children: [
      SizedBox(height: 175,), 
    Container(
    height: 579,
    width: 350,
    decoration: BoxDecoration(
    color: Color(0XFFFAF4EC),
    border: Border.all(
        color: Color(0xFF8C3117),
        width: 4,
    ),
    borderRadius: BorderRadius.all(Radius.circular(37)),
    
    ),
    
    child: Column(children: [
      SizedBox(height: 48,),
     Text("Sign Up", style: AppTextStyles.fontSizeTwo),
      SizedBox(height: 24,),
      SizedBox(
        width: 300,
        child: TextField(
        decoration: InputDecoration(
          hintText: "Enter your Email",
          labelText: "Email",
          hintStyle: AppTextStyles.fontSizeFive,
          labelStyle: AppTextStyles.fontSizeFive,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color:  Color(0xFF8C3117),
          width: 3,
        ),
          ),
           focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(
          color: Color(0xFF8C3117),
          width: 2,
        ),),
        filled: true,
        fillColor: Colors.white,
        
        ),
        
        ),
      ),

      SizedBox(height: 16,),
      SizedBox(
        width: 300,
        child: TextField(
        decoration: InputDecoration(
          hintText: "Enter your name",
          labelText: "Name",
          hintStyle: AppTextStyles.fontSizeFive,
          labelStyle: AppTextStyles.fontSizeFive,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color:  Color(0xFF8C3117),
          width: 3,
        ),
          ),
           focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(
          color: Color(0xFF8C3117),
          width: 2,
        ),),
        filled: true,
        fillColor: Colors.white,
        
        ),
        
        ),
      ),
      SizedBox(height: 16,),
      SizedBox(
        width: 300,
        child: TextField(
        decoration: InputDecoration(
          hintText: "Enter your Password",
          labelText: "Password",
          hintStyle: AppTextStyles.fontSizeFive,
          labelStyle: AppTextStyles.fontSizeFive,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color:  Color(0xFF8C3117),
          width: 3,
        ),
          ),
           focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(
          color: Color(0xFF8C3117),
          width: 2,
        ),),
        filled: true,
        fillColor: Colors.white,
        
        ),
        
        ),),
    SizedBox(height: 16,),
      SizedBox(
        width: 300,
        child: TextField(
        decoration: InputDecoration(
          hintText: "Renter your password ",
          labelText: "Confirm Password",
          hintStyle: AppTextStyles.fontSizeFive,
          labelStyle: AppTextStyles.fontSizeFive,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color:  Color(0xFF8C3117),
          width: 3,
        ),
          ),
           focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(
          color: Color(0xFF8C3117),
          width: 2,
        ),),
        filled: true,
        fillColor: Colors.white,
        
        ),
        
        ),),
       SizedBox(height: 28),
        Container(
          width: 176,
          height: 49,
          child: ElevatedButton(
            
            
            onPressed: (){
         
 Navigator.pushReplacementNamed(context, '/shimmer');

          },
          style: ElevatedButton.styleFrom(
           backgroundColor: Color(0XFFF3A398),
          elevation: 0,
          
          foregroundColor:Color(0xFF8C3117),
          side: BorderSide(
            color: Color(0xFF8C3117),
            width: 3,
            
          ),
        
          ),
           child: Text("Sign Up", style: AppTextStyles.fontSizeFour,),),
        ),
     SizedBox(height: 32,),
        Row(children: [
          SizedBox(width: 48),
          Text("Already have an account?", style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF8C3117))),
           SizedBox(width:6),
          InkWell(
            onTap: (){
          Navigator.pushReplacementNamed(context, '/login');

            },
            child: Text("Log In",  style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w900, color: Color(0xFFF3A398)))),
        ],)
    ],),

    ),

        Transform.translate(
            offset: const Offset(0, -660),
          child: Image.asset("lib/assets/images/amazing_cat.png",
          cacheWidth: 600,
          )),
    ],),
  )


    );
  }
}