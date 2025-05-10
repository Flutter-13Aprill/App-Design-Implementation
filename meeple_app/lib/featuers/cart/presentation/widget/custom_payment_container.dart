import 'package:flutter/material.dart';
import 'package:meeple_app/core/text/text_styles.dart';
import 'package:meeple_app/core/theme/app_palette.dart';

class CustomPaymentContainer extends StatelessWidget {
  const CustomPaymentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 280,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(24, 24, 24, 2),
              ),
            ),
            Positioned(
              left: 20,
              top: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 3,
                children: [
                  Text(
                    "Order Summary",
                    style: TextStyles.sfPro500.copyWith(fontSize: 19),
                  ),
                  SizedBox(height: 10, width: 10),
                  Text(
                    "Root     x1                                                    \$20",
                    style: TextStyles.sfPro500,
                  ),
                  Text(
                    "BLB Play Booster     x1                              \$20",
                    style: TextStyles.sfPro500,
                  ),
                  SizedBox(height: 20, width: 20),
                  Container(
                    height: 1,
                    width: 300,
                    color: AppPalette.smallTextColor,
                  ),
                ],
              ),
            ),
            Positioned(
              left: 20,
              top: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 3,
                children: [
                  Text(
                    "Subtotal \$ 40",
                    style: TextStyles.sfPro400.copyWith(fontSize: 19),
                  ),
                  SizedBox(height: 5, width: 5),
                  Text(
                    "Shipping \$ 20",
                    style: TextStyles.sfPro400.copyWith(fontSize: 19),
                  ),
                  SizedBox(height: 5, width: 5),
                  Text("Total:  \$60", style: TextStyles.sfPro700),
                  SizedBox(height: 20, width: 20),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
