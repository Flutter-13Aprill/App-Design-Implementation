import 'package:flutter/material.dart';
import 'package:meeple_app/core/text/text_styles.dart';
import 'package:meeple_app/core/theme/app_palette.dart';

class CustomCartContainer extends StatelessWidget {
  const CustomCartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 120,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppPalette.containersColor,
              ),
            ),
            Positioned(
              left: 150,
              // right: 200,
              top: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 3,
                children: [
                  Text("Root", style: TextStyles.sfPro500),
                  Text("Leder Games", style: TextStyles.sfPro400),
                  Text("\$32", style: TextStyles.sfPro500),
                ],
              ),
            ),
            Container(
              height: 120,
              width: 140,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 24, 24, 0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Image.asset("assets/images/cart1.png"),
            ),
            Positioned(
              right: 10,
              top: 8,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color.fromARGB(20, 170, 170, 170),
                ),
                child: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Are you sure you want to delete?"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Yes"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.delete),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 30, width: 30),
        Stack(
          children: [
            Container(
              height: 120,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppPalette.containersColor,
              ),
            ),
            Positioned(
              left: 150,

              top: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 3,
                children: [
                  Text("BLB Play Booster", style: TextStyles.sfPro500),
                  Text("Wizards of the Coast", style: TextStyles.sfPro400),
                  Text("\$50", style: TextStyles.sfPro500),
                ],
              ),
            ),
            Container(
              height: 120,
              width: 140,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 24, 24, 0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Image.asset("assets/images/cart2.png"),
            ),
            Positioned(
              right: 10,
              top: 8,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color.fromARGB(20, 170, 170, 170),
                ),
                child: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Are you sure you want to delete?"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Yes"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.delete),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
