import 'package:dominos_app/widgets/colors/dominos_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// the drawer for the "MenuScreen" and a dialog for the "Logout" button.
class MenuScreenDrawer extends StatelessWidget {
  const MenuScreenDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            margin: const EdgeInsets.all(48),
            child: Image.asset(
              "assets/images/Domino's_Pizza_Logo.png",
              fit: BoxFit.contain,
              scale: 3,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: Text("Stores", style: GoogleFonts.fraunces()),
          ),
          ListTile(
            leading: const Icon(Icons.location_on_outlined),
            title: Text("Help & Support", style: GoogleFonts.fraunces()),
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: Text("About", style: GoogleFonts.fraunces()),
          ),
          const SizedBox(
            height: 350,
          ),
          InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: const Text("want to log out"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("No")),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Yes"))
                        ],
                      ));
            },
            child: ListTile(
              leading: Icon(
                Icons.logout_outlined,
                color: dominosRed,
              ),
              title: Text(
                "Logout",
                style: GoogleFonts.fraunces(color: dominosRed),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
