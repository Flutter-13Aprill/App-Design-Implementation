import 'package:flutter/material.dart';
import 'package:project4/extensions/size.dart';

class TabGames extends StatelessWidget {
  const TabGames({
    super.key,
    required this.setImage,
    required this.setColor,
    this.setScale,
  });

  final String setImage;
  final Color setColor;
  final double? setScale;

//tabs for games to filter the streams on that game

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth() * 0.14,
      height: context.getHeight() * 0.63,
      decoration: BoxDecoration(
        color: setColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Tab(child: Image.asset(setImage, scale: setScale)),
    );
  }
}
