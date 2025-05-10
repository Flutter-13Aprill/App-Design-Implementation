import 'package:flutter/material.dart';
import 'package:taskins_to_do_list_app/styles/text_styles.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFFFBD4B4),
      appBar: AppBar(
          backgroundColor: const Color(0XFFFBD4B4),
      elevation: 0,
        
      
      ),
     
      
       body: Stack(children: [Column(children: [
  SizedBox(height: 100),
        Container(
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
        
          child: Column(
            children: [
               SizedBox(height:40),
           Row(children: [
            SizedBox(width: 145),
              
            Container(
              width:120,
              height: 120,
              child: Image.asset("lib/assets/images/profile.png", fit: BoxFit.contain,)),
           
           ],),
           SizedBox(height:10),
Row(children: [
     SizedBox(width: 130),
            Text("Saja Ibrahim", style: AppTextStyles.fontSizeThree,),
            SizedBox(width: 5),
             Icon(Icons.edit, color: Color(0xFF8C3117),),
],),
 SizedBox(height:10),
        
          SizedBox(height: 28),
          Row(children: [
            SizedBox(width: 28,),
Text("My friends", style: AppTextStyles.fontSizeFive,),
 SizedBox(width: 238,),
Text("see all", style: AppTextStyles.fontSizeSix,),

          ],),
           SizedBox(height: 16),
          Row(children: [
            SizedBox(width: 32),
           Image.asset("lib/assets/images/friend1.png"),
           SizedBox(width: 10),
           Image.asset("lib/assets/images/friend2.png"),
           SizedBox(width: 10),
          Image.asset("lib/assets/images/friend3.png"),
          SizedBox(width: 10),
          Image.asset("lib/assets/images/friend4.png"),
          SizedBox(width: 10),
          Image.asset("lib/assets/images/friend5.png"),
      

          ],),
          
          
           SizedBox(height: 32),
Row(
  children: [
     SizedBox(width: 32),
    Text("Active history", style: AppTextStyles.fontSizeFive,),
  ],
),
 SizedBox(height: 16),
Expanded(
  child: SingleChildScrollView(
    child: Column(children: [Container(
      margin: const EdgeInsets.only(bottom: 16),
        width: 380,
        height: 115,
         decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(30),
        color: Color(0xFFABD6B8),
          border: Border.all(
           color: Color(0xFF8C3117),
                      width: 3,
                              ),
                            ),
                            child: Row(children: [
                              SizedBox(width: 30),
                              Image.asset("lib/assets/images/breathing.png"),
                               SizedBox(width: 15),
                              Text("Breathing Techniques", style: AppTextStyles.fontSizeFive,),
                            ],),
    ), Container(
        width: 380,
        height: 115,
         decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(30),
        color: Color(0xFFCBB6DF),
          border: Border.all(
           color: Color(0xFF8C3117),
                      width: 3,
                              ),
                            ),
                            child: Row(children: [
                              SizedBox(width: 30),
                              Image.asset("lib/assets/images/bashful.png"),
                               SizedBox(width: 15),
                              Text("Journal", style: AppTextStyles.fontSizeFive,),
                            ],),
    ),
     SizedBox(height: 16),
    Container(
        width: 380,
        height: 115,
         decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(30),
        color: Color(0xFFF3A398),
          border: Border.all(
           color: Color(0xFF8C3117),
                      width: 3,
                              ),
                            ),
                            child: Row(children: [
                              SizedBox(width: 30),
                              Image.asset("lib/assets/images/happy_no_paw.png"),
                               SizedBox(width: 15),
                              Text("Games", style: AppTextStyles.fontSizeFive,),
                            ],),
    ),
    ],
    ),
  ),
)
        ],),)
       ],),
       Positioned(
        
     
         top:10,
        left: 40,
        child: 
      Image.asset(
                "lib/assets/images/amazing_cat.png",
                cacheWidth: 600,
              ),
        
        ),
       
       
       ],)
       
    );
  }
}

 