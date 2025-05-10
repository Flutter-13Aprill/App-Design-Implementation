import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              cursorColor: Color(0xffFF8F71),

              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Search ....",
                hintStyle: TextStyle(color: Color(0xffFF8F71)),
                filled: true,
                fillColor: const Color.fromARGB(30, 255, 255, 255),
                suffixIcon: Icon(Icons.search, color: Color(0xffFF8F71)),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Center(child: Image.asset("images/search.png", height: 300)),
        ),
      ],
    );
  }
}
