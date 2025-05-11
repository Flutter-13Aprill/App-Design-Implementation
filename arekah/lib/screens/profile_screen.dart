import 'package:arekah/screens/home_screen.dart';
import 'package:arekah/widgets/card.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'A R E K A H',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 171, 196, 170),
              ),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(title: const Text('Home')),
            ListTile(title: const Text('Settings')),
            ListTile(
              title: const Text('Log Out'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text(' warning'),
                      content: const Text(
                        'you cnat log out becouse you dont log in',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Close the dialog
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 16,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Hi, and wellcome',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
                ),
              ],
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 170,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 171, 196, 170),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'slae with us',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 170,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 171, 196, 170),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'contact us',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'maybe you like . . .',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                ),
              ],
            ),
            cardDetails('assets/img1.png', 'Table and chair set', context),
          ],
        ),
      ), 

      bottomNavigationBar: BottomAppBar(
        height: 70,
        color: const Color.fromARGB(255, 103, 93, 80),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Ink.image(
                  image: AssetImage('assets/explore.png'),
                  width: 40,
                  height: 40,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Ink.image(
                  image: AssetImage('assets/profileWhite.png'),
                  width: 40,
                  height: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
