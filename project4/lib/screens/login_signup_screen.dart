import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project4/extensions/size.dart';
import 'package:project4/widgets/login_text_field.dart';
import 'package:project4/widgets/signup_text_field.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});

  // here the usre can login and sign up or use social media to continue

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            ),
            width: context.getWidth() * 0.85,
            height: context.getHeight() * 0.55,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 15),
                //TabBar for each page
                TabBar(
                  unselectedLabelColor: Colors.grey,
                  dividerColor: Colors.transparent,
                  onTap: (value) => {currentTab = value, setState(() {})},
                  labelColor: Colors.amber,
                  indicator: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  tabs: [
                    //here is the login tab
                    Container(
                      width: context.getWidth() * 0.39,
                      height: context.getHeight() * 0.0315,
                      child: Tab(text: 'Login'),
                    ),

                    //here is the signup tab
                    Container(
                      width: context.getWidth() * 0.39,
                      height: context.getHeight() * 0.0315,
                      child: Tab(text: 'Sign Up'),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Container(
                  width: context.getWidth() * 0.80,
                  height: context.getHeight() * 0.33,

                  //here is the tabviewr for both tabs
                  child: TabBarView(
                    children: [LoginTextField(), SignupTextField()],
                  ),
                ),
                Text('OR', style: TextStyle(color: Colors.white)),
                SizedBox(height: 20),
                Row(
                  spacing: 16,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.x,
                      color: Color.fromARGB(255, 251, 37, 118),
                    ),
                    Icon(
                      FontAwesomeIcons.google,
                      color: Color.fromARGB(255, 251, 37, 118),
                    ),

                    Icon(
                      FontAwesomeIcons.instagram,
                      color: Color.fromARGB(255, 251, 37, 118),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
