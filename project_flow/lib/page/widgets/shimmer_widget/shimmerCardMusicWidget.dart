import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget shimmerCardMusicWidget() {
  return Shimmer.fromColors(
    baseColor: Colors.grey[800]!,
    highlightColor: Colors.grey[700]!,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 160,
          width: 180,
          margin: const EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            color: Colors.grey[850],
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        Container(
          width: 120,
          height: 12,
          color: Colors.grey[850],
          margin: const EdgeInsets.only(bottom: 4),
        ),
        Container(
          width: 80,
          height: 10,
          color: Colors.grey[850],
        ),
      ],
    ),
  );
}
