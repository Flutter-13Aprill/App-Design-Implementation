import 'package:app/screen/bottomnavigationbar.dart';
import 'package:app/screen/home_screen.dart';
import 'package:app/widgets/image/button/button_screen.dart';
import 'package:app/widgets/image/card/card_user_input_screen.dart';
import 'package:app/widgets/image/textfeild/textfeild_from_user_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
     // Controllers for the text fields.
    final nameControllar = TextEditingController();
    final emailControllar = TextEditingController();
    final passwordControllar = TextEditingController();
    final repatedPasswordControllar = TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xffF0F0F0),// Set the background color of the scaffold.
      appBar: AppBar(
        centerTitle: true,// Center the title in the app bar.
        backgroundColor: Color(0xffF0F0F0),
        title: Text(
          "Sin Up",// Set the title of the app bar.
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ),

      body: CardUserInputScreen(// Use a custom widget for the card containing user input fields.
        pageName: "SignupScreen", // Identifier for this screen.
        child: Column( // Arrange the children vertically.
          children: [
            SizedBox(height: 45,),
            TextfeildFromUserScreen( // Use a custom widget for the text field
              controller: nameControllar,// Associate the controller with the text field.
              label: "full name", // Set the label text.
              hintText: "full name", // Indicate that this is not a password field.
              isPassword: false,//is it password tue if you enter pasword
              iconTextFeild: Icon(Icons.person),// Set the leading icon
            ),
            TextfeildFromUserScreen(
              controller: emailControllar,
              label: "Email Adress",
              hintText: "Email Adress",
              isPassword: false,
              iconTextFeild: Icon(Icons.email),
            ),

            TextfeildFromUserScreen(
              controller: passwordControllar,
              label: "password",
              hintText: "enter password",
              isPassword: true,
              iconTextFeild: Icon(Icons.lock),
            ),
            TextfeildFromUserScreen(
              controller: repatedPasswordControllar,
              label: "repate password",
              hintText: "repate password",
              isPassword: true,
              iconTextFeild: Icon(Icons.lock),
            ),
             SizedBox(height: 12,),
            ButtonScreen( // Use a custom widget for the button.
              title: "Sin up",// Set the button text.
              pageToGo: Bottomnavigationbar(), // Set the screen to navigate to on button press.
              pageName: 'LoginScreen',//  screen identifier
            ),
          ],
        ),
      ),
    );
  }
}
