import 'package:dominos_app/widgets/checkout_screen/checkout_item_card.dart';
import 'package:dominos_app/widgets/colors/dominos_colors.dart';
import 'package:flutter/material.dart';

// This is the Checkout Collections of "CheckoutItem"s and "Confirm Checkout" container, to display on the "CheckoutScreen"
class CheckoutScreenWrap extends StatelessWidget {
  const CheckoutScreenWrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        const SizedBox(height: 16),
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
        const Padding(
          padding: EdgeInsets.all(16),
          child: CheckoutItem(
              orderName: "Choco Lava Cake",
              orderDescription:
                  "Gooy thick chocolate melt covered with chocolate cake",
              orderPrice: "16",
              orderQuantity: "2",
              orderImage: "assets/images/orders/Dessert_!.png"),
        ),
        const Padding(
          padding: EdgeInsets.all(16),
          child: CheckoutItem(
              orderName: "7 Up",
              orderDescription: "Cold Family size beverage",
              orderPrice: "6",
              orderQuantity: "1",
              orderImage: "assets/images/orders/Drink_2.png"),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            padding: const EdgeInsets.all(16),
            width: MediaQuery.sizeOf(context).width,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Sub Total"),
                    Text(
                      "   :",
                      style: TextStyle(color: dominosRed),
                    ),
                    const Text("\$47")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Discount  "),
                    Text(
                      ":",
                      style: TextStyle(color: dominosRed),
                    ),
                    const Text(" -  ")
                  ],
                ),
                const Divider(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Total"), Text("\$ 47")],
                ),
                InkWell(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 35,
                    decoration: BoxDecoration(
                        color: dominosRed,
                        borderRadius: BorderRadius.circular(18)),
                    child: const Center(
                        child: Text(
                      "Confirm Checkout",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
