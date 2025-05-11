import 'package:flutter/material.dart';

class Notific extends StatefulWidget {
  const Notific({super.key});

  @override
  State<Notific> createState() => _NotificState();
}

class _NotificState extends State<Notific> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 246, 250),

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Align(
          alignment: Alignment.center,
          child: Text(
            "Notifications",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 10, 104, 94),
            ),
          ),
        ),
        toolbarHeight: 90,
        backgroundColor: Color.fromARGB(255, 245, 246, 250),
      ),

      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Image.asset(
              "assets/images/image16.jpg",
              height: 320,
              width: 320,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "No Notification",
              style: TextStyle(color: Color.fromARGB(255, 10, 104, 94)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 250, left: 20),
            child: Row(
              children: [
                // SizedBox(width: 170),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 48, 213, 232),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: const Size(90, 60),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/image17.png",
                        height: 30,
                        width: 30,
                      ),

                      Text(
                        "   Mark all as read",
                        style: TextStyle(
                          color: Color.fromARGB(255, 10, 104, 94),

                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
