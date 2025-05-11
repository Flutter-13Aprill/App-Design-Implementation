import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text(
            "\nPatient Profile",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 10, 104, 94),
            ),
          ),
        ),

        toolbarHeight: 70,
        automaticallyImplyLeading: false,
      ),

      body: ListView(
        children: [
          Column(
            children: [
              isLoading
                  ? Shimmer.fromColors(
                    baseColor: const Color.fromARGB(255, 164, 160, 160),
                    highlightColor: Colors.grey[500]!,
                    child: Container(
                      width: 300,
                      height: 110,
                      color: Colors.grey,
                    ),
                  )
                  : Padding(
                    padding: EdgeInsets.all(16),
                    child: Container(
                      width: 500,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),

                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Image.asset(
                                  "assets/images/image18.jpeg",
                                  height: 110,
                                  width: 110,
                                ),
                              ),
                              SizedBox(width: 20),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 40.0,
                                  right: 20,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color.fromARGB(
                                          255,
                                          48,
                                          213,
                                          232,
                                        ),
                                      ),

                                      child: Align(
                                        alignment: Alignment.center,

                                        child: Text(
                                          "Active",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      "Shatha Altwaijri",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 10, 104, 94),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Profile No: 42421",
                                      style: TextStyle(
                                        color: Color.fromARGB(
                                          255,
                                          48,
                                          213,
                                          232,
                                        ),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 90.0,
                                  left: 28,
                                ),
                                child: Image.asset(
                                  "assets/images/image19.jpeg",
                                  height: 60,
                                  width: 60,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

              //---------------------------------------------
              Padding(
                padding: EdgeInsets.all(16),
                child:
                    isLoading
                        ? Shimmer.fromColors(
                          baseColor: const Color.fromARGB(255, 164, 160, 160),
                          highlightColor: Colors.grey[500]!,
                          child: Container(
                            width: 300,
                            height: 110,
                            color: Colors.grey,
                          ),
                        )
                        : Container(
                          width: 500,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),

                          child: Stack(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 8),

                                  metrics(
                                    "assets/images/image20.jpeg",
                                    "Unspecified",
                                  ),
                                  SizedBox(width: 5),
                                  metrics("assets/images/image21.jpeg", "24Y"),

                                  metrics(
                                    "assets/images/image22.jpeg",
                                    "Unspecified",
                                  ),

                                  SizedBox(width: 5),
                                  metrics(
                                    "assets/images/image23.jpeg",
                                    "Unspecified",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Container(
                  width: 500,
                  height: 240,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),

                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 13, right: 230.0),
                        child: Text(
                          "User Information",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 10, 104, 94),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),

                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                userInfo(
                                  "assets/images/image28.jpeg",
                                  "Shatha Altwaijri",
                                ),
                                userInfo(
                                  "assets/images/image25.jpeg",
                                  " Saudi",
                                ),

                                userInfo(
                                  "assets/images/image26.jpeg",
                                  " 29 Mar 2001",
                                ),
                                userInfo(
                                  "assets/images/image27.jpeg",
                                  " Female",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //------------------------
              Padding(
                padding: EdgeInsets.all(16),
                child: Container(
                  width: 500,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),

                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 13, right: 230.0),
                        child: Text(
                          "Contact Information",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 10, 104, 94),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),

                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                userInfo(
                                  "assets/images/image31.jpeg",
                                  "0555555555",
                                ),
                                userInfo(
                                  "assets/images/image30.jpeg",
                                  " Riyadh",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget metrics(String imagePath, String text) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Image.asset(imagePath, height: 90, width: 90),
      ),
      Text(
        text,
        style: TextStyle(
          color: Color.fromARGB(255, 10, 104, 94),
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

Widget userInfo(String imagePath, String text) {
  return Row(
    children: [
      Image.asset(imagePath, height: 40, width: 40),
      // SizedBox(width: 6),
      Text(
        text,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 10, 104, 94),
        ),
      ),
    ],
  );
}
