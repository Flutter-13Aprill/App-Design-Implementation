import 'package:flutter/material.dart';
import 'package:ahmed_almansour_project/Extensions_screen/screen_size.dart';
import 'package:ahmed_almansour_project/tools/colors/colors.dart';
import 'package:ahmed_almansour_project/screens/registertion_screen.dart';

class CourseContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  

   const CourseContainer({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    
  });

  @override
  Widget build(BuildContext context) {
    // main container and represent the menu card 
    return InkWell(onTap: (){
   showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          title: Text(
            'Regisertion',
            style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
          ),
          content: Text(
            'are you sure you want to stady this course',
            style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
              },
              child: Text('No', style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255))),
            ),
            TextButton(
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrtionScreen()));
              
              },
              child: Text('Yes', style: TextStyle(color: whitered)),
            ),
          ],
        );
      },
    );   
      },
      child: SizedBox(
        width: (context.getwidth()*0.47),
        height: (context.getheight()*0.35),
        child:  
        // main column 
        Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: context.getwidth()*0.47,),
             Padding(
              padding:  EdgeInsets.only(left:10),
               child: SizedBox(
                 height: context.getheight() * 0.24,
                 width: context.getwidth()*0.47,
                 child: ClipRRect(
                   borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                   child: Image.asset(
                     imagePath,
                     fit: BoxFit.cover,
                   ),
                 ),
               ),
             ),
      
            
          
            // the title text
         
               Padding(
                 padding:  EdgeInsets.only(left:10),
                 child: SizedBox(height: context.getheight()*0.05,width: context.getwidth()*0.47 ,child:Text(
                  title,softWrap: true,
                  style:  TextStyle(fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 0, 0, 0),fontSize: context.getwidth()/10*0.37),
                           ),
                 ),
               ),
             
       
           Padding(
             padding:  EdgeInsets.only(left:10),
             child: SizedBox(height: context.getheight()*0.02,width: context.getwidth()*0.47 ,child: Text(
                subtitle,softWrap: true,
                style:  TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: context.getwidth()/10*0.34),
              ) ,),
           )
            //sub title text
            
            
           
             
           
          
           
           
        
        ])),
    );
  }
}