import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  final String label;
  const CategoryWidget({super.key, required this.label});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) { // widget category 
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Chip(
        label: Text(widget.label, style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 182, 175, 169),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      ),
    );
  }
}
