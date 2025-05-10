import 'package:flutter/material.dart';
import 'package:project4/extensions/size.dart';
import 'package:project4/widgets/bottom_nav_handler.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({super.key});

//the login page text fields

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: context.getWidth() * 0.75,
          height: context.getHeight() * 0.09,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: 'Email',
            ),
          ),
        ),
        Container(
          width: context.getWidth() * 0.75,
          height: context.getHeight() * 0.07,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: 'Password',
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
            ),
          ),
        ),
        Container(alignment: Alignment.centerRight,
          width: context.getWidth() * 0.75,
          height: context.getHeight() * 0.09,
          child: Text('Forgot Password?',style: TextStyle(color: Colors.white),)
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.white,width: 1)),
          width: context.getWidth() * 0.50,
          height: context.getHeight() * 0.05,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
            ),
            onPressed: () {
              //go to explore after loggin in
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> BottomNavHandler()));
            },
            child: Text('Login'),
          ),
        ),
      ],
    );
  }
}
