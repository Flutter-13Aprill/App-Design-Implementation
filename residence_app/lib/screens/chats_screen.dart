import 'package:flutter/material.dart';
import 'package:residence_app/widgets/chat_tile_widget.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});
  // This is the Chats screen, displaying a list of recent chat previews with a search bar using Flutter's Material UI.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Top section with a title and search bar
          Container(
            decoration: const BoxDecoration(
              color: Color(0xff6a7d4f),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            padding: const EdgeInsets.only(
              top: 50,
              left: 16,
              right: 16,
              bottom: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackButton(color: Colors.white),
                    const Text(
                      "Chats",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 48),
                  ],
                ),
                SizedBox(height: 16),
                SizedBox(
                  height: 45,
                  child: SearchBar(
                    elevation: WidgetStatePropertyAll(0),
                    backgroundColor: WidgetStatePropertyAll(Color(0xff8c9f71)),
                    hintText: "Search chats...",
                    hintStyle: WidgetStatePropertyAll(
                      TextStyle(color: Colors.white),
                    ),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    trailing: [Icon(Icons.search, color: Colors.white)],
                  ),
                ),
              ],
            ),
          ),

          // List of chat items
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                ChatTileWidget(
                  username: "Lama",
                  content: "Is the apartment available for July?",
                  time: "May 10",
                ),
                const Divider(),

                ChatTileWidget(
                  username: "Abdulrahman",
                  content: "Can I reserve a room for the whole of August?",
                  time: "May 4",
                ),
                const Divider(),

                ChatTileWidget(
                  username: "Noura",
                  content: "How much is the rent for June?",
                  time: "May 1",
                ),
                const Divider(),

                ChatTileWidget(
                  username: "Faisal",
                  content: "I'd like to book for September. Is it still free?",
                  time: "April 5",
                ),
                const Divider(),

                ChatTileWidget(
                  username: "Areej",
                  content: "Is there a furnished room available in October?",
                  time: "March 27",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
