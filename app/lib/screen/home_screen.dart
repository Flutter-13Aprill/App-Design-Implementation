import 'dart:async';

import 'package:app/extension/Screen/get_size_screen.dart';
import 'package:app/screen/english_lessons_screen.dart';
 import 'package:app/widgets/image/container/container_homepage.dart';
import 'package:app/widgets/image/shimmer/shimmer_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Timer timer; // Timer to control the shimmer effect duration
  bool isshimmer =
      true; // Boolean to control whether to show shimmer or actual content
  @override
  void initState() {
    super.initState(); // Initialize a timer that runs every 5 seconds
    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        isshimmer =
            false; // After 5 seconds, set isshimmer to false to hide the shimmer effect
      });
    });
  }

  // Controller for the search bar text field
  TextEditingController SearchBarControllar = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Background color of the screen
      backgroundColor: Color(0xffF0F0F0),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffF0F0F0),
        title: Text(
          "Hello noor ", // Title of the screen

          style: TextStyle(
            fontSize: 24,
            color: Color.fromARGB(255, 22, 88, 138),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      drawer: Drawer(
        //Drawer
        backgroundColor: const Color(
          0xffF0F0F0,
        ), // Background color of the drawer
        child: Column(
          children: [
            DrawerHeader(
              // the head of drawer
              decoration: const BoxDecoration(
                color: Color.fromARGB(
                  255,
                  132,
                  122,
                  121,
                ), // Background color of the header
              ),
              child: Container(
                alignment: Alignment.center,
                width: context.getWidth(), // Uses extension to get screen width
                height:
                    context.getWHeigth() *
                    .2, // Uses extension to get 20% of screen height
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "NovaLingua", // title
                      style: TextStyle(
                        color: Color.fromARGB(
                          255,
                          255,
                          255,
                          255,
                        ), // Text color: white
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ), //style it
                    ),
                    SizedBox(height: 8),
                    Text(
                      //dscribtion and stle it
                      "Your easy and fun path to language learning.", // Short slogan
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color:
                            Colors.white70, // Slightly transparent white text
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(), // Visual separator
            ListTile(
              leading: const Icon(Icons.settings), // Settings icon
              title: const Text('Settings'),
              onTap: () {
                // Navigate to settings screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.star_border), // Rate app icon
              title: const Text('Rate App'),
              onTap: () {
                // Open app store link for rating
              },
            ),
            ListTile(
              leading: const Icon(Icons.share), // Share icon
              title: const Text('Invite a Friend'),
              onTap: () {
                // Functionality to share the app link
              },
            ),
            const ListTile(
              //des
              title: Text(
                "The first step between you and your dream of learning the language. Start now.",
                style: TextStyle(fontSize: 14),
              ),
            ),
            const Spacer(), // Pushes the logout button to the bottom
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout), // Logout icon
              title: const Text('Log Out'),
              onTap: () {
                // Logout functionality
              },
            ),
            const SizedBox(height: 16), // Bottom spacing
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 16,
                  left: 20,
                  right: 20,
                  bottom: 15,
                ),
                //search for languages and give it style
                child: SearchBar(
                  hintText: "search for a language",
                  trailing: [Icon(Icons.search)],
                  controller: SearchBarControllar,
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), //rounded more
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  isshimmer // Conditionally show Shimmer effect or the actual container
                      ? ShimmerHomeScreen()
                      : InkWell(
                        onTap: () {
                          Navigator.push(
                            // Navigat to EnglishLessonsScreen
                            context,
                            MaterialPageRoute(
                              builder: (context) => EnglishLessonsScreen(),
                            ),
                          );
                        }, // call ContainerHomepage
                        child: ContainerHomepage(
                          color: Color(0xff64A7D4),
                          lessonTitle: "English",
                          iamePath: "assets/images/5.png",
                          bookPath: "assets/images/4.png",
                        ),
                      ), // Conditionally show Shimmer effect or the actual container

                  isshimmer
                      ? ShimmerHomeScreen()
                      : InkWell(
                        onTap: () {},
                        child: ContainerHomepage(
                          color: Color(0xffE7FCE9),
                          lessonTitle: "Arabic",
                          iamePath: "assets/images/6.png",
                          bookPath: "assets/images/7.png",
                        ),
                      ),
                ],
              ),
              // Second row of language options
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  isshimmer
                      ? ShimmerHomeScreen()
                      : InkWell(
                        onTap: () {},
                        child: ContainerHomepage(
                          color: Color(0xffFFE3B7),
                          lessonTitle: "spain",
                          iamePath: "assets/images/6.png",
                          bookPath: "assets/images/7.png",
                        ),
                      ),
                  isshimmer
                      ? ShimmerHomeScreen()
                      : InkWell(
                        onTap: () {},
                        child: ContainerHomepage(
                          color: Color(0xffFFD8D4),
                          lessonTitle: "china",
                          iamePath: "assets/images/8.png",
                          bookPath: "assets/images/9.png",
                        ),
                      ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void deactivate() {
    timer.cancel();
    super.deactivate(); // Cancel the timer when the widget is deactivated
  }

  @override
  void dispose() {
    timer.cancel();
    super
        .dispose(); // Cancel the timer when the widget is disposed to prevent memory leaks
  }
}
