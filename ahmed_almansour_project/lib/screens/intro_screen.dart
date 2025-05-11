import 'package:flutter/material.dart';
import 'package:ahmed_almansour_project/screens/intro_content/intro_content1.dart';
import 'package:ahmed_almansour_project/screens/intro_content/intro_content2.dart';
import 'package:ahmed_almansour_project/screens/intro_content/intro_content3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ahmed_almansour_project/Extensions_screen/screen_size.dart';
import 'package:ahmed_almansour_project/screens/bottom_navigation_screen.dart';

//intro screen class
class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _controller =PageController();
  // on last page true
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // make stack for pages and photos and dots
        body: Stack(
          children:[
            //page view for the three pages
             PageView(
            onPageChanged: (index){
              setState(() {
                onLastPage =(index==2);
              });
            },
            //controller for contents
            controller: _controller,children: [
          IntroPage1(),
          IntroPage2(),
          IntroPage3()
          
          ],),
          // next button and dots here
          Container(alignment: Alignment(0, 0.75),child: Padding(
            padding: EdgeInsets.symmetric(horizontal:context.getwidth()*0.15 ),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               
                
               
                SizedBox(width: context.getwidth()*0.16,),
                SmoothPageIndicator(controller: _controller, count: 3,effect:  SlideEffect(    
      dotColor:  const Color.fromARGB(255, 51, 51, 51),    
      activeDotColor:  const Color.fromARGB(255, 241, 60, 60)    
  ), 
),
                
                // if not last page
                onLastPage == false ?
                GestureDetector(onTap: (){_controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);},child: Image.asset('assets/images/next.png',width: context.getwidth()*0.2,height: context.getheight()*0.2,),)
                :
                //if last page
                GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationController()));},child: Image.asset('assets/images/next.png',width: context.getwidth()*0.2,height: context.getheight()*0.2,),),
              ],
            ),
          ))
          
          
          ]
        ),


      ),
    );
  }
}