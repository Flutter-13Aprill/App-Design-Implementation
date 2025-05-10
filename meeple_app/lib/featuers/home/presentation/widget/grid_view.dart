import 'package:flutter/material.dart';
import 'package:meeple_app/featuers/home/data/grid_images_model.dart';
import 'package:shimmer/shimmer.dart';

class CustomGradeView extends StatefulWidget {
  const CustomGradeView({super.key});

  @override
  State<CustomGradeView> createState() => _CustomGradeViewState();
}

class _CustomGradeViewState extends State<CustomGradeView> {
  bool loding = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      setState(() {
        loding = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (loding == true) {
      return Shimmer.fromColors(
        baseColor: Colors.grey.shade800,
        highlightColor: Colors.grey.shade600,
        period: const Duration(seconds: 2),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 0.75,
          ),
          itemCount: gridData.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                //  customPuch(context, NoPlayingScreen());
              },
              child: Image.asset(gridData[index].path, fit: BoxFit.contain),
            );
          },
        ),
      );
    } else {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.75,
        ),
        itemCount: gridData.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // customPuch(context, NoPlayingScreen());
            },
            child: Image.asset(gridData[index].path, fit: BoxFit.contain),
          );
        },
      );
    }
  }
}
