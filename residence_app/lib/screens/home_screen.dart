import 'package:flutter/material.dart';
import 'package:residence_app/screens/login_signup_screen.dart';
import 'package:residence_app/screens/previous_bookings_screen.dart';
import 'package:residence_app/widgets/room_card_shimmer_widget.dart';
import 'package:residence_app/widgets/room_card_widget.dart';

// Home screen showing list of available rooms with drawer menu and search bar

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<HomeScreen> {
  final PageController pageController = PageController();
  String? username;
  bool isClicked = false;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Drawer header with welcome message
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xff6a7d4f)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome ${username ?? "Back"}",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),

            // Navigation options in the drawer
            ListTile(
              leading: Icon(Icons.login, color: Color(0xff746c64)),
              title: Text(
                "Login",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff746c64),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginSignupScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.history, color: Color(0xff746c64)),
              title: Text(
                "Previous Bookings",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff746c64),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PreviousBookingsScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outline, color: Color(0xff746c64)),
              title: Text(
                "About Us",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff746c64),
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header with search bar, title, logo, and menu
            Container(
              decoration: BoxDecoration(
                color: Color(0xff6a7d4f),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Builder(
                            builder:
                                (context) => IconButton(
                                  onPressed: () {
                                    Scaffold.of(context).openDrawer();
                                  },
                                  icon: Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                          ),

                          Image.asset(
                            "assets/images/white-logo.png",
                            height: 55,
                            width: 55,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Residence",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 16),
                    SizedBox(
                      height: 45,
                      width: 320,
                      child: SearchBar(
                        elevation: WidgetStatePropertyAll(0),
                        backgroundColor: WidgetStatePropertyAll(
                          Color(0xff8c9f71),
                        ),
                        hintText: "Search",
                        hintStyle: WidgetStatePropertyAll(
                          TextStyle(color: Colors.white),
                        ),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        trailing: {Icon(Icons.search, color: Colors.white)},
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16),

            // Room cards list
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  isLoading
                      ? RoomCardShimmerWidget()
                      : RoomCardWidget(
                        title: "Al-Muruj Room",
                        location: "Al-Muruj, Riyadh",
                        roomType: "Shared Room",
                        price: "1500",
                        roommatesCount: 4,
                        features: [
                          "High-speed Wi-Fi",
                          "Air conditioning",
                          "Washing machine",
                          "Fully furnished",
                          "Near public transport",
                          "Quiet and safe area",
                        ],
                        rating: 5,
                        imagePath1: "assets/images/apartment1/living-room.png",
                        imagePath2: "assets/images/apartment1/kitchen.png",
                        imagePath3: "assets/images/apartment1/bedroom.png",
                      ),
                  SizedBox(height: 16),

                  isLoading
                      ? RoomCardShimmerWidget()
                      : RoomCardWidget(
                        title: "Al-Yasmin Room",
                        location: "Alyasmin, Riyadh",
                        roomType: "Private Room",
                        price: "2200",
                        roommatesCount: 3,
                        features: [
                          "Air conditioning",
                          "Fully furnished",
                          "Near public transport",
                          "Quiet and safe area",
                        ],
                        rating: 4,
                        imagePath1: "assets/images/apartment2/living-room.png",
                        imagePath2: "assets/images/apartment2/kitchen.png",
                        imagePath3: "assets/images/apartment2/bedroom.png",
                      ),
                  SizedBox(height: 16),

                  isLoading
                      ? RoomCardShimmerWidget()
                      : RoomCardWidget(
                        title: "Al-Rimal  Room",
                        location: "Al-Rimal, Riyadh",
                        roomType: "Private Room",
                        price: "1200",
                        roommatesCount: 2,
                        features: [
                          "High-speed Wi-Fi",
                          "Air conditioning",
                          "Washing machine",
                          "Quiet and safe area",
                        ],
                        rating: 3,
                        imagePath1: "assets/images/apartment3/living-room.png",
                        imagePath2: "assets/images/apartment3/kitchen.png",
                        imagePath3: "assets/images/apartment3/bedroom.png",
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
