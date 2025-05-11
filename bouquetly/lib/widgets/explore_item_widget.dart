import 'package:bouquetly/exstenshon/exstenshon.dart';
import 'package:flutter/material.dart';

class ExploreItemWidget extends StatefulWidget {
  final String image;
  final String Name;
  final String discription;
  const ExploreItemWidget({
    super.key,
    required this.Name,
    required this.image,
    required this.discription,
  });

  @override
  State<ExploreItemWidget> createState() => _ExploreItemWidgetState();
}

class _ExploreItemWidgetState extends State<ExploreItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Column( // widget for the most popular take value from the explore screen
      children: [
        SizedBox(
          height: context.gethight() / 2.7,// exstenshon
          width: context.getWidth() / 1.0,
      
          child: Stack(
            children: [
              Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 236, 232, 228),
                ),
              ),
              Positioned(
                top: 40,
                left: 30,
                child: Text(
                  widget.Name,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                ),
              ),

              Positioned(
                top: 100,
                left: 10,
                child: Text(
                  widget.discription,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Positioned(
                left: 130,
                bottom: 50,
                child: Image.asset(widget.image, height: 250, width: 250),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
