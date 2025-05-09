import 'package:app/screen/login_screen.dart';
import 'package:app/screen/signup_screen.dart';
import 'package:flutter/material.dart';

/// A screen that contains a TabBar for switching between Login and Sign Up forms.
///
/// Uses [TabController] with 2 tabs:
/// - Login tab
/// - Sign Up tab
///
class LoginSignupTabBar extends StatefulWidget {
  const LoginSignupTabBar({super.key});

  @override
  State<LoginSignupTabBar> createState() => _LoginSignupTabBarState();
}

class _LoginSignupTabBarState extends State<LoginSignupTabBar>
    with TickerProviderStateMixin {
  // TabController to manage the tab navigation
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Initialize the TabController with 2 tabs
    // vsync: this → required for animation synchronization (from TickerProviderStateMixin)
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // Always clean up the controller when the widget is removed from the tree
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0F0F0),// Light gray background
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffF0F0F0),
        title: const Text(
          "Login / Sign Up",//title
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        bottom: TabBar(//tabbar 
          controller: _tabController,//controller of TabBar
           // First tab: Login Second tab: Sign Up
          tabs: [Tab(text: "Login"), Tab(text: "Sign Up")],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
           // Content for Login tab and Signup
        children: [LoginScreen(), SignupScreen()],
      ),
    );
  }
}
