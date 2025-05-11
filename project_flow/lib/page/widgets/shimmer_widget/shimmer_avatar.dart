import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget shimmerAvatarWidget() {
  return Shimmer.fromColors(
    baseColor: Colors.grey[800]!,
    highlightColor: Colors.grey[400]!,
    child: CircleAvatar(
      minRadius: 80,

      backgroundColor: Color.fromRGBO(37, 40, 54, 1),
      child: Text(""),
    ),
  );
}
