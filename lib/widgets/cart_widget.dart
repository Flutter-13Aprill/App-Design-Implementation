import 'package:flutter/material.dart';

// -- Widgets
import 'package:kaf/widgets/confirmation_button_widget.dart';
import 'package:kaf/widgets/dummy_item_row_widget.dart';

class CartWidget extends StatelessWidget {

  /// [CartWidget] is a bottom sheet widget used to display the items of the user's cart.
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [

          SizedBox(height: 42,),

          Align(
            alignment: Alignment.centerLeft,
            child: Text('Cart', style: Theme.of(context).textTheme.labelLarge,)
          ),

          SizedBox(height: 32,),

          DummyItemRowWidget(),
          
          SizedBox(height: 32,),

          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Text('Tax: \$1.20', style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Color(0xff8E8E8E)),),
                Text('Total (before tax) : \$8.06', style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Color(0xff8E8E8E))),
                Text('Total : \$9.26', style: Theme.of(context).textTheme.labelLarge,)
              ],
            ),
          ),

          SizedBox(height: 32,),

          ConfirmationButtonWidget(text: 'Pay', onPressed: (){
            showDialog(context: context, builder: (context){
              return AlertDialog(
                backgroundColor: Colors.white,
                title: Text('As our application doesn\'t support back-end yet. We\'ll pray for you to get a coffee'),

                actions: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Color(0xff543310)
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: Text('Cancel')
                  )
                ],
            );
            });
          })
        ],
      ),
    );
  }
}