import 'package:flutter/material.dart';

// The Search bar on the "Menu_Screen"
class MenuScreenSearchBar extends StatelessWidget {
  const MenuScreenSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
      child: Center(
        child: Container(
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: const TextField(
            decoration: InputDecoration(
                hintText: "     Search",
                hintStyle: TextStyle(color: Colors.black, fontSize: 13),
                suffixIcon: Icon(
                  Icons.search_rounded,
                  color: Colors.black,
                ),
                border: UnderlineInputBorder(borderSide: BorderSide.none)),
          ),
        ),
      ),
    );
  }
}
