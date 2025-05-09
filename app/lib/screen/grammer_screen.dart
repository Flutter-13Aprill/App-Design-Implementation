import 'package:app/extension/Screen/get_size_screen.dart';
import 'package:app/widgets/image/container/container_gramme.dart';
import 'package:flutter/material.dart';

class GrammerScreen extends StatefulWidget {
  const GrammerScreen({super.key});

  @override
  State<GrammerScreen> createState() => _GrammerScreen();
}

class _GrammerScreen extends State<GrammerScreen> {
  // A text editing controller (not used in this specific code snippet)
  TextEditingController controllerInput = TextEditingController();
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
        children: [
          Container(
            // Custom container widget for the first grammar option
            margin: EdgeInsets.all(35),
            child: Text(
              "choose correct sentence",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),

          Column(
            children: [
              ContainerGramme(
                color: const Color(0xFFB3E5FC),//clor 
                title: "she is a girl",  // The grammar option text
                isWrong: false,// Indicates if this is the wrong answer
              ), // Light Blue
              ContainerGramme(
                isWrong: true,
                color: const Color.fromARGB(255, 153, 163, 168),
                title: "cat is nice",
              ), // Slightly darker Blue
              ContainerGramme(
                isWrong: true,
                color: const Color.fromARGB(255, 136, 189, 133),
                title: "he have ",
              ), // Medium Blue
              ContainerGramme(
                isWrong: true,
                color: const Color.fromARGB(255, 196, 146, 97),
                title: "not clear",
              ), // Darker Blue
            ],
          ),
        ],
      ),
    );
  }
}
