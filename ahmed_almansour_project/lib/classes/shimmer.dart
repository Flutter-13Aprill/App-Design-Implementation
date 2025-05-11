import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:ahmed_almansour_project/Extensions_screen/screen_size.dart';

Widget buildShimmerItem(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[800]!,
      highlightColor: Colors.grey[600]!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: context.getheight() * 0.20,
            width: context.getwidth()*0.47,
             decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          const SizedBox(height: 8),
         
        ],
      ),
    );
  }