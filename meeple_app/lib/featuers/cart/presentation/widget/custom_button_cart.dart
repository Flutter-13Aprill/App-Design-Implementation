import 'package:flutter/material.dart';
import 'package:meeple_app/core/text/text_styles.dart';
import 'package:meeple_app/core/theme/app_palette.dart';
import 'package:meeple_app/featuers/cart/presentation/widget/custom_pay_button.dart';
import 'package:meeple_app/featuers/cart/presentation/widget/custom_payment_container.dart';

class CustomButtonCart extends StatelessWidget {
  const CustomButtonCart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: 370,
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: AppPalette.containersColor,
            context: context,
            builder: (BuildContext context) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: SizedBox(height: 100, width: 700)),
                  CustomPaymentContainer(),
                  SizedBox(height: 30, width: 30),
                  CustomPayButton(),
                ],
              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: AppPalette.buttonColor,
        ),
        child: Center(
          child: FittedBox(
            child: Text(
              "Checkout",
              style: TextStyles.sfPro500.copyWith(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
