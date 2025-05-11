import 'package:flutter/material.dart';
import 'package:ahmed_almansour_project/Extensions_screen/screen_size.dart';
import 'package:ahmed_almansour_project/tools/colors/colors.dart';
//ptofile content class
class ProfileContent extends StatefulWidget {
  const ProfileContent({super.key});

  @override
  State<ProfileContent> createState() => _ProfileContentState();
}

class _ProfileContentState extends State<ProfileContent> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: Scaffold(
      backgroundColor:whitegray,
      //app bar for app
      appBar: AppBar(centerTitle: true,backgroundColor: whitegray,title: Text('Profile',style: TextStyle(color: whitegray),),),
      body: Padding(
        padding:EdgeInsets.symmetric(horizontal: context.getwidth()*0.10),
        child: Column(children: [
        SizedBox(width: context.getwidth(),height: context.getheight()*0.03,),
        //profile image
        Container(decoration: BoxDecoration(shape: BoxShape.circle,),child: Image.asset('assets/images/Ava.png'),),
        SizedBox(height: context.getheight()*0.03,),
        Text('Change Profile',style: TextStyle(color: whitegray),),
        //list tiles
        SizedBox(height: context.getheight()*0.03,),
        Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),color:Colors.grey),child: Column(children: [
        Container(decoration: BoxDecoration(border:Border(bottom: BorderSide(color:whitegray, width: 1),left: BorderSide.none,right: BorderSide.none,top: BorderSide.none,),),child: ListTile(leading: Image.asset('assets/images/profileicon1.png'),title:Text('Change Theme',style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),),)),
        Container(decoration: BoxDecoration(border:Border(bottom: BorderSide(color:whitegray, width: 1),left: BorderSide.none,right: BorderSide.none,top: BorderSide.none,),),child:ListTile(leading: Image.asset('assets/images/profileicon2.png'),title:Text('Privacy',style: TextStyle(color:const Color.fromARGB(255, 241, 234, 234)),),),),
        Container(decoration: BoxDecoration(border:Border(bottom: BorderSide(color:whitegray, width: 1),left: BorderSide.none,right: BorderSide.none,top: BorderSide.none,),),child:ListTile(leading: Image.asset('assets/images/profileicon3.png'),title:Text('About',style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),),)),
        Container(decoration: BoxDecoration(border:Border(bottom: BorderSide.none,left: BorderSide.none,right: BorderSide.none,top: BorderSide.none,),),child:ListTile(leading: Image.asset('assets/images/profileicon4.png'),title:Text('Logout',style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),),))
        
        
        ],),)
        
        
        
        ],),
      ),
  ));
  }
}