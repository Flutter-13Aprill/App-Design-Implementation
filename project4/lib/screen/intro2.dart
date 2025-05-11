import 'package:flutter/material.dart';

class Intro2 extends StatelessWidget {
  const Intro2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white, toolbarHeight: 10),

      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Text(
              "Flexible Time",
              style: TextStyle(
                color: const Color.fromARGB(255, 37, 150, 190),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                "\nYou can Book your Appointment\n     based on your schedule and \n                     demand \n",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 90, 90, 90),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: Center(
                child: SizedBox(
                  height: 317,
                  width: 240,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(100),
                      topLeft: Radius.circular(100),
                    ),
                    child: Image.asset(
                      "assets/images/image3.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Intro2()),
                );
              },
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 48, 213, 232),

                      borderRadius: BorderRadius.circular(200),
                    ),
                    height: 70,
                    width: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18, left: 18),
                    child: Icon(
                      Icons.arrow_forward,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 100),

            // InkWell(
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => BottomNavBar()),
            //     );
            //   },
            //   child: Stack(
            //     children: [
            //       Image.asset("assets/images/image3.png"),
            //       Padding(
            //         padding: const EdgeInsets.only(top: 16, left: 18),
            //         child: Icon(Icons.arrow_forward, size: 32),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
