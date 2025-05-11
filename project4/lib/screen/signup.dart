import 'package:flutter/material.dart';
import 'package:project4/screen/home_screen.dart';
import 'package:project4/screen/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String name = '--';
  final fieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 246, 250),
      appBar: AppBar(
        toolbarHeight: 38, //to resizr the app bar
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
              "Signup",
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
                      "ID / Iqamah# / MRN#",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color.fromARGB(255, 124, 123, 123),
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
                  Align(alignment: Alignment.bottomRight, child: Text("0/10")),

                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Mobile Number",
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
                      hintText: "Enter phone number",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Date of birth",
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
                    decoration: InputDecoration(),
                  ),
                  SizedBox(height: 16),

                  InkWell(
                    child: Text(
                      "I have an account? Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 10, 104, 94),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                  ),

                  SizedBox(height: 30),

                  Padding(
                    padding: const EdgeInsets.only(left: 64.0),
                    child: SizedBox(
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
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Signup",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
