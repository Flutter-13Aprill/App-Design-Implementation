import 'package:flutter/material.dart';

// -- External Package
import 'package:flutter_svg/svg.dart';
import 'package:kaf/extensions/screen_sizes.dart';

class CoffeeCardWidget extends StatelessWidget {
  const CoffeeCardWidget({super.key, required this.name, required this.description, required this.price, required this.rating, required this.imagePath});

  final String name;
  final String description;
  final double price;
  final double rating;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.symmetric(horizontal: 4),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.5),
            offset: Offset(0, 4),
            blurRadius: 8
          )
        ],
        borderRadius: BorderRadius.circular(16)
      ),
      child: Stack(
        children: [

          Column(
            children: [
              
              Image.asset(imagePath, fit: BoxFit.contain, width: context.getWidth() * 0.5,),
              
              SizedBox(height: 8,),
              
              Align(
                alignment: Alignment.centerLeft,
                child: Text(name, style: Theme.of(context).textTheme.titleLarge,)
              ),
              
              SizedBox(height: 4,),
              
              Align(
                alignment: Alignment.centerLeft,
                child: Text(description, style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Color(0xffA2A2A2)),)),
              
              SizedBox(height: 8,),
              
              Align(
                alignment: Alignment.centerLeft,
                child: Text('\$${price.toString()}', style:  Theme.of(context).textTheme.labelLarge,)
              )
              
            ],
          ),

          // Rating
          Positioned(
            right: 0,
            child: Container(
              width: 50,
              height: 30,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), topRight: Radius.circular(12)),
                gradient: LinearGradient(
                  colors: [Color(0xff111111).withAlpha(77), Color(0xff313131).withAlpha(77)]
                )
              ),
              child: Row(
                spacing: 2,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
            
                  SvgPicture.asset('assets/home_screen/svgs/Star.svg'),
            
                  Text('4.8', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}