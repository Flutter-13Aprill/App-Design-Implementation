import 'package:dominos_app/widgets/colors/dominos_colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

// The shimmer for the "MenuScreen"
class ShimmerBox extends StatelessWidget {
  const ShimmerBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: dominosBlue,
        highlightColor: dominosRed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(10))),
            ),
            const SizedBox(height: 8),
            Container(
              height: 80,
              color: Colors.black,
            ),
          ],
        ));
  }
}
