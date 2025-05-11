
import 'package:flutter/material.dart';
import 'package:project_flow/page/homePage/home_page.dart';
import 'package:project_flow/page/widgets/iconContainer_widget.dart';
import 'package:project_flow/page/widgets/mainButton.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(21),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  
                  Text(
                    "Create Account",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Please Inter your Informatioin and create your account",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              TextFormField(
                 decoration: InputDecoration(
                  hintText:  'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              TextFormField(
                 decoration: InputDecoration(
                  hintText:  'E-mail',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              TextFormField(

                decoration: InputDecoration(
                  hintText: 'password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                ),
              ),
              MainButton(
                yourLogic: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                text: "Sign up",
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconContainer(iconPath: "assets/images/icons/Social Networks Icons.png"),
                  SizedBox(width: 8),
                  IconContainer(iconPath: "assets/images/icons/instgram.png"),
                  SizedBox(width: 8),
                  IconContainer(iconPath: "assets/images/icons/google.png"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
