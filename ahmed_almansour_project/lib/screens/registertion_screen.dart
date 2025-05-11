import 'package:ahmed_almansour_project/screens/bottom_navigation_screen.dart';
import 'package:flutter/material.dart';

class RegistrtionScreen extends StatelessWidget {
  const RegistrtionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
body: SafeArea(child: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16),
  child: Column(children: [
  TextField(decoration: InputDecoration(hintText: 'Name'),),
  TextField(decoration: InputDecoration(hintText: 'Age'),),
  TextField(decoration: InputDecoration(hintText: 'Natuional ID'),),
  ElevatedButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNavigationController()));}, child: Text('confirm'))
  
  
    
  ],),
)),





    ),);
  }
}