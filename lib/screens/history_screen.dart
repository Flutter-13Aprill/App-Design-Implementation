import 'package:flutter/material.dart';

// -- Widget
import 'package:kaf/widgets/dummy_item_row_widget.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff543310),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        title: Text('Order History', style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.white)),
      ),

      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 64),

            Text('24th May', style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 22),),

            SizedBox(height: 16,),

            DummyItemRowWidget()
          ],
        ),
      ),
    );
  }
}