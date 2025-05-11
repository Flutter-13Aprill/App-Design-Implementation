import 'package:flutter/material.dart';


// -- Screens
import 'package:kaf/screens/history_screen.dart';
import 'package:kaf/screens/home_screen.dart';
import 'package:kaf/screens/log_in_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreen();
}

class _BottomNavScreen extends State<BottomNavScreen> {

  List<Widget> screens = [HomeScreen(), HistoryScreen()];
  int selectedScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(39)),
        child: BottomNavigationBar(
          onTap: (value) => setState(() { selectedScreen = value;}),
          backgroundColor: Color(0xff543310),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          
          currentIndex: selectedScreen ,
          items: [
            BottomNavigationBarItem(label: 'Home',icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'History', icon: Icon(Icons.list_alt_outlined))
          ],
        ),
        
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset('assets/authentication_screen/images/logo.png'),
            ),

            ListTile(leading: Icon(Icons.person), title: Text('Profile'),),
            ListTile(leading: Icon(Icons.settings), title: Text('Settings'),),
            ListTile(leading: Icon(Icons.storefront_sharp), title: Text('Our Branches'),),
            ListTile(leading: Icon(Icons.call), title: Text('Contact us'),),

            Spacer(),
            ListTile(
              leading: Icon(Icons.logout), 
              title: Text('Log out'),
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogInScreen())),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
      body: screens.elementAt(selectedScreen),
    );
  }
}