import 'package:dominos_app/screens/checkout_screen.dart';
import 'package:dominos_app/widgets/checkout_screen/checkout_item_card.dart';
import 'package:dominos_app/widgets/colors/dominos_colors.dart';
import 'package:flutter/material.dart';

// This is the "buttomsheetItems" is the buttom sheet that will Pop-up to the user whenever he add an item to the cart
class ButtomSheetItems extends StatelessWidget {
  const ButtomSheetItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: dominosBlue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: CheckoutItem(
                orderName: "Texas BBQ Chicken",
                orderDescription:
                    "Preppered Texas BBQ Chicken, BBQ Sauce, Mozzarella Cheese",
                orderPrice: "25",
                orderQuantity: "1",
                orderImage: "assets/images/orders/Pizza_1.png"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CheckoutScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 35,
                decoration: BoxDecoration(
                    color: dominosRed, borderRadius: BorderRadius.circular(18)),
                child: const Center(
                    child: Text(
                  "Go To Checkout",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
