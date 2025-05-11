import 'package:dominos_app/screens/menu_screen.dart';
import 'package:dominos_app/widgets/checkout_screen/checkout_wrap.dart';
import 'package:dominos_app/widgets/colors/dominos_colors.dart';
import 'package:flutter/material.dart';

// Checkout screen for the orders add to cart
class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(240, 237, 243, 255),
      appBar: AppBar(
        backgroundColor: dominosBlue,
        leading: IconButton( // Back button to the "menu_screen"
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const MenuScreen()));
            },
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            )),
        title: const Text(
          "Checkout",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CheckoutScreenWrap() // the items add to cart and the checkout confirmation for "CheckoutScreenWrap"
          ],
        ),
      ),
    );
  }
}
