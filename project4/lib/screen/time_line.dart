import 'package:flutter/material.dart';

class TimeLine extends StatelessWidget {
  const TimeLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 100, automaticallyImplyLeading: false),

      body: Center(child: Text("No Timeline")),
    );
  }
}
