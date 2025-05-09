import 'package:app/extension/Screen/get_size_screen.dart';
import 'package:app/screen/bottomnavigationbar.dart';
import 'package:app/screen/home_screen.dart';
import 'package:app/screen/signup_screen.dart';
import 'package:app/widgets/image/button/button_screen.dart';
import 'package:app/widgets/image/button/text_button_screen.dart';
import 'package:app/widgets/image/card/card_user_input_screen.dart';
import 'package:app/widgets/image/textfeild/textfeild_from_user_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Controllers for the email and password text fields
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F0F0),
      appBar: AppBar(centerTitle: true, backgroundColor: Color(0xffF0F0F0)),
      body: Column(
        children: [
          Container(
            // Container for the terms and privacy policy text
            margin: EdgeInsets.only(
              //   margin
              top: context.getWHeigth() * .02,
              bottom: context.getWHeigth() * .02,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "By signing in you are agreeing \n",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  TextSpan(
                    text: "our Term and privacy policy",
                    style: TextStyle(color: Color(0xff16527F), fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          // Custom card for user input (email and password)
          CardUserInputScreen(
            pageName: "LoginScreen", // Identifier for this screen
            child: Column(
              children: [
                Text(
                  "Login",
                  style: TextStyle(fontSize: context.getWidth() * 0.05),
                ),
 // Custom text field for email input
                TextfeildFromUserScreen(
                  iconTextFeild: Icon(Icons.email),// Email icon
                  controller: emailTextEditingController,
                  label: "email",// Label for the email field
                  hintText: "enter your email ",// hintText for the email field
                  isPassword: false, // Indicates this is not a password field
                ),

                TextfeildFromUserScreen(
                  isPassword: true,
                  iconTextFeild: Icon(Icons.lock),
                  controller: passwordTextEditingController,
                  label: "password",
                  hintText: "enter password",
                ),
                ButtonScreen(
                  title: "login",
                  pageToGo: Bottomnavigationbar(),
                  pageName: 'LoginScreen',
                ),
                Align(
                  alignment: Alignment(0.8, 0),
                  child: TextButtonScreen(
                    title: "forgot password",
                    color: Colors.grey.shade400,
                  ),
                ),

                TextButtonScreen(
                  title: "don't have account register now",
                  color: Color(0xff16527F),
                  pageToGo: SignupScreen(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
