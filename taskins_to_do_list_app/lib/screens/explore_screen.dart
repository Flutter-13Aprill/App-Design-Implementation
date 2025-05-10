import 'package:flutter/material.dart';
import 'package:taskins_to_do_list_app/styles/text_styles.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: const Color(0XFFFBD4B4),
      appBar: AppBar(
         backgroundColor: const Color(0XFFFBD4B4),
      elevation: 0,
        
      
      ),

       
      
      body: Stack(children: [

SingleChildScrollView(
  child: Column(children: [
    SizedBox(height: 100),
  InkWell(
    onTap: (){
   Navigator.pushNamed(context, '/breathing');
    },
    child: Container(
              width: 430,
              height: 615,
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
                  SizedBox(height: 48,),
                Row(
                    children: [
              SizedBox(width: 48,),
                      Text("Wind down", style: AppTextStyles.fontSizeThree),
                    ],
                  ),
                SizedBox(height: 16,),
                   SizedBox(
                     height: 200,
                     child: PageView(
                          scrollDirection: Axis.horizontal,
                  
                            
                          children: [
                        
                           Padding(
                             padding: const EdgeInsets.only(left:32.0, right: 32),
                             child: Container(
                                width: 200,
                               
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xFFABD6B8),
                                   border: Border.all(
                                    color: Color(0xFF8C3117),
                                    width: 2,
                                  ),
                                ),
                                 child: Column(children: [
                                  SizedBox(height: 32,),
                                  Image.asset("lib/assets/images/breathing.png"),
                                  SizedBox(height: 10,),
                                  Text("Breathing Technique", style: AppTextStyles.fontSizeThree ),
                                 ],)
                              ),
                           ),
                          
                           Padding(
                             padding: const EdgeInsets.only(left:32.0, right: 32),
                             child: Container(
                              width: 200,
                                               
                              decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(30),
                                color: Color(0XffCBB6DF),
                                border: Border.all(
                                  color: Color(0xFF8C3117),
                                  width: 2,
                                ),
                              ),
                              child: Column(children: [
                                   SizedBox(height: 32,),
                                Image.asset("lib/assets/images/bashful.png",),
                                 SizedBox(height: 10,),
                              Text("Journal", style: AppTextStyles.fontSizeThree),
                              ],)
                                               ),
                           ),
                           Padding(
                            padding: const EdgeInsets.only(left:32.0, right: 32),
                             child: Container(
                              width: 200,
                             
                              decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(30),
                                color: Color(0xFFF3A398),
                                 border: Border.all(
                                  color: Color(0xFF8C3117),
                                  width: 2,
                                ),
                              ),
                              child: Column(children: [
                                   SizedBox(height: 32,),
                                Image.asset("lib/assets/images/happy_no_paw.png"),
                                  SizedBox(height: 10,),
                              Text("Games", style: AppTextStyles.fontSizeThree),
                              ],)
                                               ),
                           ),
                      
                       ]
                      ),
                   ),],)
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
