import 'package:flutter/material.dart';

class CartButtonWidget extends StatelessWidget {
  const CartButtonWidget({super.key, required this.onPressed});
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        height: 70,
        width: 70,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xffF8F4E1),
        ),
        child: Image.asset('assets/home_screen/images/Shopping Cart.png'),
      ),
    );
  }
}
