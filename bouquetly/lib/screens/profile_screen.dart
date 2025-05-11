import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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

          Positioned(
            left: 110,
            top: 60,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white.withOpacity(0.6),
                ),
                SizedBox(height: 8),
                Text(
                  "Raghad Alsakhain",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          Align(
            alignment: Alignment(0, 0.4),
            child: SizedBox(
              height: 400,
              width: 300,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                    255,
                    236,
                    232,
                    228,
                  ).withOpacity(0.8),

                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        leading: Icon(Icons.location_on),
                        title: Text("Address"),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        leading: Icon(Icons.lock),
                        title: Text("Password"),
                      ),
                    ),

                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        leading: Icon(Icons.translate),
                        title: Text("Languge"),
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              backgroundColor: const Color.fromARGB(
                                255,
                                236,
                                232,
                                228,
                              ).withOpacity(0.9),
                              title: Text(
                                "Are you sure you want to logout app? ",
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    "cancel",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    Future.delayed(
                                      Duration(milliseconds: 100),
                                      () {
                                        Navigator.pop(context);
                                      },
                                    );
                                  },
                                  child: Text(
                                    "Exit",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: ListTile(
                        leading: Icon(Icons.logout),
                        title: Text("Lougout"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
