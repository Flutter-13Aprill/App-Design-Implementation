import 'package:flutter/material.dart';
import 'package:project4/extensions/size.dart';
import 'package:shimmer/shimmer.dart';

class StreamsShimmer extends StatelessWidget {
  const StreamsShimmer({super.key});

  @override

  //here is giving the streams a shimmer until they are downloaded
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(15)),
        width: context.getWidth() * 0.6,
        height: context.getHeight() * 0.15,
      ),
    );
  }
}
