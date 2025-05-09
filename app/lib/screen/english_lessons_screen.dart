 import 'package:app/screen/grammer_screen.dart';
import 'package:app/widgets/image/container/Container_english_lesson.dart';
 import 'package:flutter/material.dart';
import 'package:entry/entry.dart';

class EnglishLessonsScreen extends StatefulWidget {
  const EnglishLessonsScreen({super.key});

  @override
  State<EnglishLessonsScreen> createState() => _EnglishLessonsScreenState();
}

class _EnglishLessonsScreenState extends State<EnglishLessonsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200, // Background color of the screen
      appBar: AppBar(
        centerTitle: true, // Center the title in the AppBar
        backgroundColor: Colors.grey.shade200, // Background color of the AppBar
        title: const Text(
          "English", // Title of the screen
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ), // Style of the title
        ),
      ),
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Center the content vertically
        crossAxisAlignment:
            CrossAxisAlignment.center, // Center the content horizontally
        children: [
          // Entry animation for the Grammar lesson container
          Entry(
            opacity: 0, // Start with zero opacity
            scale: 0.8, // Start with 80% of the original scale
            delay: const Duration(
              milliseconds: 200,
            ), // Delay the animation by 200 milliseconds
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,//navigat to GrammerScreen
                  MaterialPageRoute(builder: (context) => GrammerScreen()),
                );
              },
              child: ContainerEnglishLesson(
                color: const Color(
                  0xffFFD8D4,
                ), // Background color of the container
                title: "Grammar", // Title of the lesson
                icon: const Icon(Icons.book), // Icon for the Grammar lesson
                describtion: const Text(
                  "We will learn English grammar that will allow you to make a good sentence.", // Description of the lesson
                ),
              ),
            ),
          ),
          // Entry animation for the Vocabulary lesson container
          Entry(
            opacity: 0, // Start with zero opacity
            scale: 0.8, // Start with 80% of the original scale
            delay: const Duration(
              milliseconds: 400,
            ), // Delay the animation by 400 milliseconds
            child: InkWell(
              onTap: () {}, // Define the action when the container is tapped
              child: ContainerEnglishLesson(
                color: const Color(
                  0xffFFE3B7,
                ), // Background color of the container
                title: "Vocabulary", // Title of the lesson
                icon: const Icon(
                  Icons.description,
                ), // Icon for the Vocabulary lesson
                describtion: const Text(
                  "We will expand your vocabulary by learning new words and terms.", // Description of the lesson
                ),
              ),
            ),
          ),
          // Entry animation for the Listening lesson container
          Entry(
            opacity: 0, // Start with zero opacity
            scale: 0.8, // Start with 80% of the original scale
            delay: const Duration(
              milliseconds: 600,
            ), // Delay the animation by 600 milliseconds
            child: InkWell(
              onTap: () {}, // Define the action when the container is tapped
              child: ContainerEnglishLesson(
                color: const Color(
                  0xffE7FCE9,
                ), // Background color of the container
                title: "Listening", // Title of the lesson
                icon: const Icon(
                  Icons.headphones,
                ), // Icon for the Listening lesson
                describtion: const Text(
                  "We will improve your listening skills through various audio exercises and activities.", // Description of the lesson
                ),
              ),
            ),
          ),
          // Entry animation for the Speaking lesson container
          Entry(
            opacity: 0, // Start with zero opacity
            scale: 0.8, // Start with 80% of the original scale
            delay: const Duration(
              milliseconds: 800,
            ), // Delay the animation by 800 milliseconds
            child: InkWell(
              onTap: () {}, // Define the action when the container is tapped
              child: ContainerEnglishLesson(
                color: const Color(
                  0xff64A7D4,
                ), // Background color of the container
                title: "Speaking", // Title of the lesson
                icon: const Icon(Icons.mic), // Icon for the Speaking lesson
                describtion: const Text(
                  "We will work on developing your ability to speak fluently and confidently in different situations.", // Description of the lesson
                  style: TextStyle(
                    color: Colors.black,
                  ), // Style of the description text
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
