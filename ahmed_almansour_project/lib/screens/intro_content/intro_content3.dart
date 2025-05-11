import 'package:flutter/material.dart';
import 'package:ahmed_almansour_project/Extensions_screen/screen_size.dart';
import 'package:ahmed_almansour_project/tools/colors/colors.dart';
class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
   Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
    home: Scaffold(backgroundColor: whitegray,
body: SafeArea(child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
SizedBox(height: context.getheight()*0.09,width: context.getwidth(),),
Container(width: context.getwidth()*0.48,height: context.getheight()*0.29,alignment: Alignment.center,decoration: 
BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(context.getwidth()*0.75),topRight: Radius.circular(context.getwidth()*0.75)),color: Colors.transparent),child:
//image container
Image.asset('assets/images/learn.webp',fit: BoxFit.fill,) ),
SizedBox(height: 100,),
Text('Learn Anytime, Anywhere',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: context.getwidth()*0.08),softWrap: true,textAlign:TextAlign.center),
Padding(
  padding: EdgeInsets.symmetric(horizontal: context.getwidth()*0.06),
  child: Text.rich(softWrap: true,textAlign:TextAlign.center ,
  //down text
  TextSpan(text: """Flexible learning that fits your lifestyle.
Study at your own pace, from any device.""",style: 
  TextStyle(color: Colors.black,fontSize: context.getwidth()/10*0.36))),
)
],)),

    ),);
  }
}