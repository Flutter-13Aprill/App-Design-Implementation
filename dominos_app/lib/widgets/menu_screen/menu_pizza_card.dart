import 'package:dominos_app/widgets/colors/dominos_colors.dart';
import 'package:dominos_app/widgets/custom_green_button.dart';
import 'package:dominos_app/widgets/menu_screen/buttom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// The template for orders on Menu_screen
class MenuCard extends StatelessWidget {
  const MenuCard(
      {super.key,
      required this.orderName,
      required this.orderDescription,
      required this.orderPrice,
      required this.orderImage});

  final String orderName; // Order name
  final String orderDescription; // Order dercription
  final String orderPrice; // Order price
  final String orderImage; // Order image

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 220,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: SizedBox( 
                  width: MediaQuery.sizeOf(context).width, 
                  height: 120,
                  child: Image.asset(
                    orderImage, //Order Image
                    fit: BoxFit.fill,
                  ))),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              orderName, // Order Name
              style: GoogleFonts.fraunces(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              orderDescription, // Order Description
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  "\$$orderPrice", // Order Price
                  style: TextStyle(
                      color: dominosBlue,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CustomGreenButton( // Add to cart Button
                  buttonLabel: "Add To Cart",
                  showButtomSheet: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => const ButtomSheetItems());
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
