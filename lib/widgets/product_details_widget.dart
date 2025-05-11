import 'package:flutter/material.dart';

// -- Widgets
import 'package:kaf/widgets/add_item_button_widget.dart';
import 'package:kaf/widgets/confirmation_button_widget.dart';
import 'package:kaf/widgets/subtraction_item_button_widget.dart';

// -- Extension 
import 'package:kaf/extensions/screen_sizes.dart';

class ProductDetailsScreen extends StatefulWidget {

  /// [ProductDetailsScreen] is a screen that displays the drink’s name, description, and cost.
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetailsScreen> {

  final description = 'A bold and velvety espresso blended with steamed milk and a thin layer of microfoam for a smooth, balanced coffee experience.';
  int count = 1; 

  @override
  Widget build(BuildContext context) {
    return Container(
      
        height: 460,
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
      
                SizedBox(height: context.getHeight() * 0.1,),
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Flat White', style: Theme.of(context).textTheme.labelLarge!),
      
                    Row(
                      spacing: 8,
                      children: [
                        Image.asset('assets/product_screen/images/Extra Milk.png'),
                        Image.asset('assets/product_screen/images/Quality Bean.png')
                      ],
                    )
                  ],
                ),
      
                SizedBox(height: 8),
      
                Align(
                  alignment: Alignment.centerLeft,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 290,
                    ),
                    child: Text(description, style: Theme.of(context).textTheme.labelSmall,),
                  ),
                ),

                SizedBox(height: 42),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Price', style: Theme.of(context).textTheme.displaySmall,),
                        Text('\$3.52', style: Theme.of(context).textTheme.labelLarge,)
                      ],
                    ),

                    Row(
                      spacing: 16,
                      children: [

                        SubtractionItemButtonWidget(onTap:(){
                          setState(() {
                            if(count <= 1){
                              count = 1;
                            }else{
                              count -= 1;
                            }
                          });
                        }),

                        Text(count.toString(), style: Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 24),),
                        
                        AddItemButtonWidget(onTap: () {
                          setState(() {
                            if(count >= 4){
                              count = 4;
                            }else{
                              count += 1;
                            }
                          });
                        },)

                      ],
                    )
                  ],
                ),

                SizedBox(height: 72,),

                ConfirmationButtonWidget(text: 'ADD TO CART', onPressed: () => Navigator.pop(context))
              ],
            ),
      
            Positioned(
              left: 0,
              right: 0,
              top: -200,
              child: Image.asset(
                fit: BoxFit.scaleDown,
                'assets/product_screen/images/Bottom sheet.png'
                )
            )
          ],
        ),
      );
  }
}