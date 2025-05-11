import 'package:flutter/material.dart';

class DummyItemRowWidget extends StatelessWidget {
  const DummyItemRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, 4),
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/history_screen/images/Bottom sheet.png',
            width: 80,
            height: 80,
            fit: BoxFit.contain,
          ),

          SizedBox(width: 32),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Flat White',
                style: TextTheme.of(
                  context,
                ).titleMedium!.copyWith(fontSize: 22),
              ),

              Text('X2'),
            ],
          ),

          Spacer(),

          Text('\$3.53', style: Theme.of(context).textTheme.labelLarge),
        ],
      ),
    );
  }
}
