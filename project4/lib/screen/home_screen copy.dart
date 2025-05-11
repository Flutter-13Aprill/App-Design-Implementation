import 'package:flutter/material.dart';
import 'package:project4/screen/profile.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  String name = '--';
  final fieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 246, 250),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 246, 250),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("assets/images/image34.png", height: 70, width: 70),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\nHello..",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 10, 104, 94),
                          ),
                        ),

                        Text("Shatha Altwaijri"),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: Image.asset(
                    "assets/images/image36.png",
                    height: 70,
                    width: 70,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 170,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Card(color: Color.fromARGB(255, 48, 213, 232)),
                  ),
                  Positioned(
                    right: 16,
                    bottom: 10,
                    child: Image.asset(
                      "assets/images/image7.png",
                      fit: BoxFit.fill,
                      height: 140,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 140.0, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\nWe care about\n Your Health",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 200,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Column(
                                          children: [
                                            Text(
                                              'Please Choose your appointments type!\n',
                                              style: TextStyle(fontSize: 18),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "               1.In clinic Appointments",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),

                                                SizedBox(width: 20),
                                                Text(
                                                  "2.Telemedicine",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          child: const Text(
                            "Book Appointment",
                            style: TextStyle(
                              color: Color.fromARGB(255, 44, 208, 226),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 380,
              child: Column(
                children: [
                  Stack(
                    children: [
                      TextField(
                        enabled: true,
                        controller: fieldController,
                        decoration: InputDecoration(
                          hintText: "Search for a doctor or clinic ..",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        top: 2,
                        child: Image.asset(
                          "assets/images/image13.jpg",
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                contain("assets/images/image8.jpg", "Laboratary"),
                contain("assets/images/image9.jpg", "Nedical Records"),
                contain("assets/images/image10.jpg", "My Visits"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                contain("assets/images/image11.jpg", "Pharmcy"),
                contain("assets/images/image12.jpg", "Radiology"),
              ],
            ),
            SizedBox(height: 60),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 0, 106, 97),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  minimumSize: const Size(200, 60),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset("assets/images/image15.png"),
                    SizedBox(width: 8),
                    Text(
                      "Book Appointment",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            SizedBox(
              height: 220,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                          child: Image.asset(
                            "assets/images/image18.jpeg",
                            height: 80,
                            width: 80,
                          ),
                        ),
                        SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0, right: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shatha Altwaijri",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 10, 104, 94),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "Profile No: 42421",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 48, 213, 232),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
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
            ListTile(
              title: Text("My Profile"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
            ),
            ListTile(
              title: Text("About us"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
            ),
            ListTile(title: Text("Contact Us"), onTap: () {}),
            ListTile(title: Text("Settings"), onTap: () {}),
            ListTile(
              title: InkWell(
                child: Text(
                  "Logout",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                onTap: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          height: 100,
                          width: 90,
                          padding: EdgeInsets.all(8),
                          child: Column(
                            children: [
                              Text(
                                "Logout from app?",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Logout"),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget contain(String imagePath, String text) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Container(
      height: 112,
      width: 112,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Image.asset(imagePath, height: 70, width: 80),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(color: Color.fromARGB(255, 10, 104, 94)),
            ),
          ),
        ],
      ),
    ),
  );
}
