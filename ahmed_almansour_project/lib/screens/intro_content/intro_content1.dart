import 'package:flutter/material.dart';
import 'package:ahmed_almansour_project/Extensions_screen/screen_size.dart';
import 'package:ahmed_almansour_project/tools/colors/colors.dart';
class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: whitegray,
body: SafeArea(child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
SizedBox(height: context.getheight()*0.09,width: context.getwidth(),),
Container(width: context.getwidth()*0.48,height: context.getheight()*0.29,alignment: Alignment.center,decoration: 
BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(context.getwidth()*0.75),topRight: Radius.circular(context.getwidth()*0.75)),color: Colors.transparent),child:
//image container
ClipRRect(borderRadius: BorderRadius.vertical(top: Radius.circular(40)),child: Image.asset('assets/images/best.webp',fit: BoxFit.fill,)) ),
SizedBox(height: 100,),
Text('Learn from the Best',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: context.getwidth()*0.08),softWrap: true,textAlign:TextAlign.center),
Padding(
  padding: EdgeInsets.symmetric(horizontal: context.getwidth()*0.06),
  child: Text.rich(softWrap: true,textAlign:TextAlign.center ,
  //down text
  TextSpan(text: "Access world-class courses created by industry leaders and top universities. \n Empower your career with knowledge that truly matters.",style: 
  TextStyle(color: Colors.black,fontSize: context.getwidth()/10*0.36))),
)
],)),

    ),);
  }
}