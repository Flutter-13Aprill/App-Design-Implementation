import 'package:app_design_implementation/Screen/main_navigation_screen.dart';
import 'package:app_design_implementation/Widgets/Profile_ConfirmLogout_Widgets.dart';
import 'package:app_design_implementation/Widgets/Profile_MenuItem_Widget.dart';

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  // Constructor for ProfileScreen
  const ProfileScreen({super.key});

  // Method to show the logout confirmation dialog
  void _confirmLogout(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (_) => ProfileConfirmLogoutWidgets(
            onLogout: () {
              // Add your logout logic here
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => MainNavigationScreen()),
              );
            },
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparent background
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => MainNavigationScreen()),
            );
          },
        ),
        centerTitle: true,
        title: ShaderMask(
          shaderCallback:
              (bounds) => const LinearGradient(
                colors: [Color(0xFFBFA0FF), Colors.white],
              ).createShader(bounds),
          child: const Text(
            'Profile',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4B3D6B), Color(0xFF24243E)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            children: [
              SizedBox(height: 20), // Spacer
              // Avatar image
              CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage('assets/Profile.png'),
              ),

              SizedBox(height: 20), // Spacer
              // User name
              Text(
                'John Doe',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 6), // Spacer
              // Email
              Text(
                'johndoe@gmail.com',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),

              SizedBox(height: 32), // Spacer
              // Stylish Menu Box
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF2D2B40), // Dark background for menu
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Edit Profile Menu Item
                    ProfileMenuitemWidget(
                      icon: Icons.edit,
                      color: Color(0xFF53C2EF),
                      label: 'Edit Profile',
                      onTap: () {},
                    ),
                    Divider(color: Colors.white10, height: 1), // Divider
                    // Privacy Menu Item
                    ProfileMenuitemWidget(
                      icon: Icons.lock,
                      color: Color(0xFFDA6FFF),
                      label: 'Privacy',
                      onTap: () {},
                    ),
                    Divider(color: Colors.white10, height: 1), // Divider
                    // About Menu Item
                    ProfileMenuitemWidget(
                      icon: Icons.info_outline,
                      color: Color(0xFF53C2EF),
                      label: 'About',
                      onTap: () {},
                    ),
                    Divider(color: Colors.white10, height: 1), // Divider
                    // Logout Menu Item
                    ProfileMenuitemWidget(
                      icon: Icons.logout,
                      color: Color(0xFFFF6B6B),
                      label: 'Logout',
                      onTap:
                          () => _confirmLogout(
                            context,
                          ), // Show logout confirmation
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
