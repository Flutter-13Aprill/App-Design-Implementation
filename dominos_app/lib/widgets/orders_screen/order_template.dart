import 'package:dominos_app/widgets/custom_green_button.dart';
import 'package:flutter/material.dart';

// This is the previous order class to be displayed on the "OrdersScreen"
class OrderTemplate extends StatelessWidget {
  const OrderTemplate(
      {super.key,
      required this.ordernNum,          // The Previous Order Number
      required this.orderDetails,       // The Previous Order items
      required this.orderPrice});       // The Previous Order Total Price

  final String ordernNum;
  final String orderDetails;
  final String orderPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8, right: 8),
      width: 400,
      height: 90,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Order #$ordernNum",        // The Previous Order Number
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                orderDetails,                // The Previous Order items
                style: const TextStyle(fontSize: 10),
              ),
              Text(
                "\$$orderPrice",             // The Previous Order Total Price
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Dine-In",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {},
                child:  CustomGreenButton(
                  buttonLabel: "Order Again",
                  showButtomSheet: () {},
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
