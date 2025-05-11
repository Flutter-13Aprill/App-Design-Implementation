import 'package:dominos_app/screens/menu_screen.dart';
import 'package:dominos_app/widgets/collections/buttom_navigation_screens.dart';
import 'package:dominos_app/widgets/colors/dominos_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// "ProfileScreen" where the user can access his information and seek customer support

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScrennState();
}

class _ProfileScrennState extends State<ProfileScreen> {
  int currentNavigationIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(240, 237, 243, 255),
      appBar: AppBar(
        backgroundColor: dominosBlue,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const MenuScreen()));
            },
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            )),
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          onTap: (value) {
            setState(() {
              currentNavigationIndex = value;
              value; // Here given the index for the buttom navigation
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: ((context) =>
                          navigationScreensList[currentNavigationIndex])));
            });
          },
          unselectedItemColor: dominosBlue,
          selectedItemColor: dominosRed,
          currentIndex: currentNavigationIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: "Orders"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: "Profile")
          ]),
      body: Container(
        height: 350,
        color: Colors.white,
        child: Column( // the collection of "Listtile"s is displayed using this column.
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Adam Smith",
                    style: GoogleFonts.fraunces(fontSize: 30),
                  )),
            ),
            const ListTile(
              leading: Icon(Icons.edit),
              title: Text("Change Name"),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.assignment_outlined),
              title: Text("Invoices"),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.support_agent),
              title: Text("Customer Service"),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            )
          ],
        ),
      ),
    );
  }
}
