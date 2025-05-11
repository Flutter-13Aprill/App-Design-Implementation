import 'package:bouquetly/widgets/BottomnavigationWidget.dart';
import 'package:flutter/material.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 232, 228),
      body: Stack(
        children: [
          SizedBox(
            height: 500,
            width: 450,
            child: Container(
              child: Image.asset("images/aboutus.jpg", fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 500,
            width: 450,
            child: Container(color: Colors.white.withOpacity(0.2)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Center(
              child: Container(
                //the contaner take all the abb bar
                height: 465,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: DefaultTabController(
                  length: 2,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
                    child: Column(
                      children: [
                        Container(
                          //small contaner to take tab bar
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey),
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: TabBar(
                            labelPadding: EdgeInsets.zero,
                            labelColor: Colors.white,
                            unselectedLabelColor: const Color.fromARGB(
                              255,
                              0,
                              0,
                              0,
                            ).withOpacity(0.7),
                            indicator: BoxDecoration(
                              color: const Color.fromARGB(255, 182, 175, 169),
                              borderRadius: BorderRadius.all(
                                Radius.circular(14),
                              ),
                            ),
                            tabs: [
                              Tab(
                                child: Container(
                                  width: 145,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Log in',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  width: 145,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 40),

                        Expanded(
                          child: TabBarView(
                            children: [
                              Column(
                                //log in
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                      hintText: "Enter email or your number",
                                      hintStyle: TextStyle(
                                        fontSize: 18,
                                        color: const Color.fromARGB(
                                          255,
                                          0,
                                          0,
                                          0,
                                        ).withOpacity(0.7),
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 30),

                                  TextField(
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                        fontSize: 18,
                                        color: const Color.fromARGB(
                                          255,
                                          0,
                                          0,
                                          0,
                                        ).withOpacity(0.7),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 40),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                        255,
                                        182,
                                        175,
                                        169,
                                      ),
                                      minimumSize: Size(280, 50),
                                    ),
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder:
                                              (context) =>
                                                  BottomnavigationWidget(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      "Log in ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Container(
                                    alignment: Alignment.bottomRight,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Forgot Password?",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                            255,
                                            182,
                                            175,
                                            169,
                                          ),
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),

                              ///sign up
                              Column(
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                      hintText: "Name",
                                      hintStyle: TextStyle(
                                        fontSize: 18,
                                        color: const Color.fromARGB(
                                          255,
                                          0,
                                          0,
                                          0,
                                        ).withOpacity(0.7),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  TextField(
                                    decoration: InputDecoration(
                                      hintText: "Enter email or your number",
                                      hintStyle: TextStyle(
                                        fontSize: 18,
                                        color: const Color.fromARGB(
                                          255,
                                          0,
                                          0,
                                          0,
                                        ).withOpacity(0.7),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  TextField(
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                        fontSize: 18,
                                        color: const Color.fromARGB(
                                          255,
                                          0,
                                          0,
                                          0,
                                        ).withOpacity(0.7),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 30),

                                  ElevatedButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            backgroundColor:
                                                const Color.fromARGB(
                                                  255,
                                                  236,
                                                  232,
                                                  228,
                                                ).withOpacity(0.9),
                                            title: Text("Verification"),
                                            content: TextField(
                                              decoration: InputDecoration(
                                                hintText:
                                                    "Enter verrification code",
                                                border: OutlineInputBorder(),
                                              ),
                                            ),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  'Cancel',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.white,
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  'Verify',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                        255,
                                        182,
                                        175,
                                        169,
                                      ),
                                      minimumSize: Size(280, 50),
                                    ),
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
