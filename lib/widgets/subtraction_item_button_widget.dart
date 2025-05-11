import 'package:flutter/material.dart';

class SubtractionItemButtonWidget extends StatefulWidget {
  const SubtractionItemButtonWidget({super.key, required this.onTap});
  final void Function() onTap;

  @override
  State<SubtractionItemButtonWidget> createState() => _SubtractionItemButtonWidgetState();
}

class _SubtractionItemButtonWidgetState extends State<SubtractionItemButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:widget.onTap,
      child: Container(
        width: 40,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(width: 2, color: Color(0xffAF8F6F)),
        ),
        child: Text(
          '-',
          style: Theme.of(
            context,
          ).textTheme.displayMedium!.copyWith(fontSize: 24),
        ),
      ),
    );
  }
}
