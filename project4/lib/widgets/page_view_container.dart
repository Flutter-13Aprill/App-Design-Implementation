import 'package:flutter/material.dart';
import 'package:project4/extensions/size.dart';

class PageViewContainer extends StatelessWidget {
  const PageViewContainer({super.key, required this.setImage, required this.setText});


final String setImage;
final String setText;

  @override
  Widget build(BuildContext context) {
    return Column(spacing: 8,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: context.getWidth()*0.5,
          child: Image.asset(setImage,fit: BoxFit.fill,),
        ),
        Text(
          textAlign: TextAlign.center,
          setText,
          style: TextStyle(color: Colors.white,fontSize: 14),
        ),
      ],
    );
  }
}
