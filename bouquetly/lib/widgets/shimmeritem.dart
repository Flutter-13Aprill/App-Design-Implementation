import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BouquetShimmerCard extends StatelessWidget { //shimmer for the item on store 
  const BouquetShimmerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color.fromARGB(255, 250, 249, 249),
      highlightColor: const Color.fromARGB(255, 255, 254, 254),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 200,
      ),
    );
  }
}
