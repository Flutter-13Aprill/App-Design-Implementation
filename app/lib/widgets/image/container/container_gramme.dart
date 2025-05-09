import 'package:app/extension/Screen/get_size_screen.dart';
import 'package:flutter/material.dart';

class ContainerGramme extends StatelessWidget {
  final Color color; // The background color of the container.
  final String title;// The title of the lesson.
  final bool isWrong; // A boolean indicating if the grammar is incorrect
//constractor
  ContainerGramme({
    super.key,
    required this.color,
    required this.title,
    required this.isWrong,
  });

  // Method to show the BottomSheet
  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20), // Rounded top corners
        ),
      ),
      isScrollControlled: true, // Allows scrolling if content overflows
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0), // Add padding for neat layout
          width: context.getWidth() * 0.9, // Use 90% of the screen width
          height: context.getWHeigth() * 0.5, // Use 50% of the screen height
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 149, 138, 146), // Background color
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(//dispaly explanation for a grammer
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "She: A pronoun used to refer to a female (e.g., a girl or woman).",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              const SizedBox(height: 10),
              const Text(
                "is: A helping verb used with singular subjects (he, she, it) in the present tense.",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              const SizedBox(height: 10),
              const Text(
                "a girl: A noun phrase meaning a female child.",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              const SizedBox(height: 20),
              const Text(
                "Structure:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "[Pronoun] + [Helping Verb] + [Noun/Adjective].",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              const SizedBox(height: 20),
              const Text(
                "Example:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "It is a cat.",
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: () {
        // Show the bottom sheet when the container is tapped
     isWrong?   showBottomSheet(context):"";
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 25),//margin to Container
        alignment: Alignment.center,//Alignment to center
        padding: const EdgeInsets.all(16),//margin to padding
        width: context.getWidth(),//give width & height
        height: context.getWHeigth() * .08,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),//round the container 
        ),
        child: Text(
          title,//title of massges 
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
