import 'package:flutter/material.dart';

// -- Widgets
import 'package:kaf/widgets/coffee_card_widget.dart';
import 'package:kaf/widgets/product_details_widget.dart';
import 'package:kaf/widgets/shimmer_effect_widget.dart';

// - Extension
import 'package:kaf/extensions/screen_sizes.dart';

class ListingCoffeeItemsWidget extends StatefulWidget {

  /// [ListingCoffeeItemsWidget] is a grid-based widget that displays all available drinks in the Kaf app.
  const ListingCoffeeItemsWidget({super.key});

  @override
  State<ListingCoffeeItemsWidget> createState() => _ListingCoffeeItemsWidgetState();
}

class _ListingCoffeeItemsWidgetState extends State<ListingCoffeeItemsWidget> {
  
  // ---- Dummy Data ----
  List<String> coffeeNames = ['Caffe Mocha','Flat White','Mocha Fusi','Caffe Panna'];
  List<String> coffeeDescription = ['Deep Foam','Espresso','Ice/Hot','Ice/Hot'];
  List<double> coffeePrices = [4.53, 3.53,7.53, 5.53];
  List<String> coffeeImagesPath = [
    'assets/home_screen/images/Image.png',
    'assets/home_screen/images/3.png',
    'assets/home_screen/images/Image (1).png',
    'assets/home_screen/images/4.png'
  ];

  bool isLoading = true;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth(),
      height: context.getHeight() * 0.75,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 32,
          crossAxisSpacing: 32,
          childAspectRatio: 0.668,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {

          if(isLoading){

            Future.delayed(Duration(seconds: 2), (){
              setState(() {
                isLoading = false;
              });
            });

            return ShimmerEffectWidget();
          }

          return InkWell(
            child: CoffeeCardWidget(name: coffeeNames[index], description: coffeeDescription[index], price: coffeePrices[index], rating: 4.8, imagePath: coffeeImagesPath[index]),
            onTap: () {
              showModalBottomSheet(
                backgroundColor: Colors.white,
                context: context,
                builder: (context) => ProductDetailsScreen(),
              );
            },
          );
        },
      ),
    );
  }
}
