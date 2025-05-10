import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AddContainer extends StatefulWidget {
  const AddContainer({super.key});

  @override
  State<AddContainer> createState() => _AddContainerState();
}

class _AddContainerState extends State<AddContainer> {
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
        child: SizedBox(
          height: 160,
          width: 370,
          child: Image.asset("assets/images/ad_card.png"),
        ),
      );
    } else {
      return SizedBox(
        height: 160,
        width: 370,
        child: Image.asset("assets/images/ad_card.png"),
      );
    }
  }
}
