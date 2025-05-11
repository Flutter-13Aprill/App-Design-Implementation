import 'package:dominos_app/widgets/colors/dominos_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// this is the class for the orders displayed on "CheckoutScreen"
class CheckoutItem extends StatelessWidget {
  const CheckoutItem(
      {super.key,
      required this.orderName,          // this for the Order Name
      required this.orderDescription,   // this for the Order Description
      required this.orderPrice,         // this for the Order Price
      required this.orderQuantity,      // this for the Order Quantity
      required this.orderImage});       // this for the Order Image

  final String orderName;
  final String orderDescription;
  final String orderPrice;
  final String orderQuantity;
  final String orderImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Container(
            width: 150,
            height: MediaQuery.sizeOf(context).height,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              orderImage,   // Here is the Order Image
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  orderName,        // Here is the Order Name
                  style: GoogleFonts.fraunces(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 175),
                  child: Text(
                    orderDescription,  // Here is the Order Description
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Quantity: $orderQuantity",    // Here is the Order Quantity
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Text(
                      "\$$orderPrice",     // Here is the Order Price
                      style: TextStyle(
                          color: dominosBlue, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
