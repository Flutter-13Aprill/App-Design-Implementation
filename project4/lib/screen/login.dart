import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project4/screen/bottom_nav_bar.dart';
import 'package:project4/screen/home_screen%20copy.dart';
import 'package:project4/screen/home_screen.dart';
import 'package:project4/screen/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = '--';
  final fieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 246, 250),
      appBar: AppBar(
        toolbarHeight: 48, //to resizr the app bar
        backgroundColor: Color.fromARGB(255, 245, 246, 250),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/image32.jpeg", height: 250, width: 300),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                height: 2,
                color: Color.fromARGB(255, 10, 104, 94),
              ),
            ),
          ),
          // ListTile(
          //   title: Padding(
          //     padding: const EdgeInsets.only(bottom: 30.0),
          //     child: Text(
          //       "Log in",
          //       textAlign: TextAlign.center,
          //       style: TextStyle(
          //         fontSize: 24,
          //         fontWeight: FontWeight.bold,
          //         height: 2,
          //       ),
          //     ),
          //   ),

          //   subtitle: Text(
          //     "Login with your social networks",
          //     style: TextStyle(color: Color.fromARGB(255, 120, 116, 109)),
          //     textAlign: TextAlign.center,
          //   ),
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     FaIcon(
          //       FontAwesomeIcons.squareFacebook,
          //       size: 40,
          //       color: Color.fromARGB(255, 101, 170, 234),
          //     ),
          //     SizedBox(width: 8),
          //     FaIcon(
          //       FontAwesomeIcons.squareInstagram,
          //       size: 40,
          //       color: Color.fromARGB(255, 101, 170, 234),
          //     ),
          //     SizedBox(width: 8),
          //     FaIcon(
          //       FontAwesomeIcons.squareGooglePlus,
          //       size: 40,
          //       color: Color.fromARGB(255, 101, 170, 234),
          //     ),
          //   ],
          // ),
          SizedBox(height: 16),

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: SizedBox(
              width: 380,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Username/ ID / Email",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color.fromARGB(255, 172, 170, 170),
                      ),
                    ),
                  ),
                  TextField(
                    enabled: true,
                    controller: fieldController,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                        // borderRadius: BorderRadius.circular(10.0),

                        // borderSide: BorderSide(
                        //   // color: Color.fromARGB(255, 190, 186, 179),
                        // ),
                      ),
                    ),
                  ),

                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color.fromARGB(255, 172, 170, 170),
                      ),
                    ),
                  ),
                  TextField(
                    enabled: true,
                    controller: fieldController,
                    decoration: InputDecoration(
                      suffixIcon: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.eyeSlash,
                            size: 18,
                            color: Color.fromARGB(255, 48, 213, 232),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  Text(
                    "Forgot Username or Password?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 10, 104, 94),
                    ),
                  ),

                  SizedBox(height: 16),

                  Row(
                    children: [
                      SizedBox(
                        height: 56,
                        width: 250,

                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 48, 213, 232),

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          ),

                          onPressed: () {
                            name = fieldController.text;
                            setState(() {});
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavBar(),
                              ),
                            );
                          },

                          child: Text(
                            "Log in",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Image.asset(
                          "assets/images/image33.jpeg",
                          height: 70,
                          width: 70,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 56,
                    width: 311,

                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Color.fromARGB(0, 255, 255, 255),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),

                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup()),
                        );
                      },

                      child: Padding(
                        //to adjust the text spaces
                        padding: const EdgeInsets.all(8),
                        child: Align(
                          alignment: Alignment.center, //to adjust text place
                          child: RichText(
                            //to add two texts, one of them is clickable
                            text: TextSpan(
                              text: "Don't have an account?",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 10, 104, 94),
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "   Sign Up",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 86, 142, 130),
                                  ),

                                  recognizer:
                                      TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Signup(),
                                            ),
                                          );
                                        },
                                  //clickable text
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // child: Text(
                      //   "Don't have an account? Sign up",
                      //   style: TextStyle(
                      //     color: Color.fromARGB(255, 120, 116, 109),
                      //     fontWeight: FontWeight.bold,
                      //     fontSize: 16,
                      //   ),
                      // ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: 170,

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 245, 246, 250),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),

              onPressed: () {
                name = fieldController.text;
                setState(() {});
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text(
                "Continue As Guest",
                style: TextStyle(
                  color: Color.fromARGB(255, 86, 142, 130),
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
