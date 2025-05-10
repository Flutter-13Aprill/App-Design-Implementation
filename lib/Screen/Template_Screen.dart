import 'package:app_design_implementation/Screen/main_navigation_screen.dart';
import 'package:app_design_implementation/Widgets/Template_Widget.dart';
import 'package:flutter/material.dart';

class TemplateScreen extends StatelessWidget {
  const TemplateScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),  // Back button
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => MainNavigationScreen()),  // Navigate back to main navigation
            );
          },
        ),
        title: ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [Color(0xFFBFA0FF), Colors.white],
          ).createShader(bounds),
          child: Text(
            'My CVs',  // Title of the screen
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF4B3D6B), Color(0xFF24243E)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4B3D6B), Color(0xFF24243E)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF2D2B40),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Purchase Templates',  // Section title
                        style: TextStyle(
                          color: Color(0xFFBFA0FF),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30),
                      TemplateWidget(imagePath: 'assets/template1.png', title: 'Basic CV'),  // Template 1
                      SizedBox(height: 30),
                      TemplateWidget(imagePath: 'assets/template2.png', title: 'Professional CV'),  // Template 2
                      SizedBox(height: 30),
                      TemplateWidget(imagePath: 'assets/template3.png', title: 'Creative CV'),  // Template 3
                      SizedBox(height: 30),
                      TemplateWidget(imagePath: 'assets/template4.png', title: 'Modern CV'),  // Template 4
                    ],
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
