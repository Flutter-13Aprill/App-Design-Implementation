import 'package:flutter/material.dart';
import 'package:redacted/redacted.dart';

class MovieCard extends StatefulWidget {
  final String img;
  const MovieCard({super.key, required this.img});

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  bool isLoading = true;
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 500), () {
      isLoading = false;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Image.asset(widget.img, width: 100),
    ).redacted(
      context: context,
      redact: isLoading,
      configuration: RedactedConfiguration(
        animationDuration: const Duration(seconds: 800), //default
      ),
    );
  }
}
